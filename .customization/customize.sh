#!/bin/bash

echo 'Running Granite Guest Customization'

if [ x$1 != x"postcustomization" ]
then
    echo 'Not running postcustomization yet. Exiting Granite Guest Customization'
    exit 0
fi

RPCTOOL="vmware-rpctool"

echo "RPCTOOL: $RPCTOOL"

graniteOvfProperty() {
    echo $("$RPCTOOL" 'info-get guestinfo.ovfEnv' | grep "key=\"Granite_$1\"" | sed -r 's/.*value=\"(.*?)\".*/\1/' | sed -e 's~\&amp;~\&~g' -e 's~\&lt;~<~g' -e 's~\&gt;~>~g' -e 's~\&quot;~\"~g' -e"s~\&apos;~\'~g")
}

userProfile() {
    echo $(grep "^$1" /etc/passwd | awk -vFS=':' '{print $6}')
}

# Assumes that the first device to be partition is sdb. This should be improved to look for the next unpartitioned device letter i.e. sd(c,d,e,etc)
DRIVE_TO_PARTITION="/dev/sdb"
PARTITIONED_DRIVE="/dev/sdb1"
ALIGN=""
if [ "$(parted --help | grep "\-align")" ]; then
    ALIGN="-a optimal"
fi
    
if [ -b $DRIVE_TO_PARTITION ]&&[ ! -b $PARTITIONED_DRIVE ]
then
    echo "Paritioning $DRIVE_TO_PARTITION and formatting $PARTITIONED_DRIVE"
	echo "Alignment: $ALIGN"

    parted -s $ALIGN $DRIVE_TO_PARTITION mklabel gpt mkpart primary 0% 100%
    pvcreate $PARTITIONED_DRIVE
    vgcreate appsvg $PARTITIONED_DRIVE
    lvcreate -l 100%FREE -n apps_lv appsvg

    FSTYPE=$(df -T | grep "^/dev/sda1" | awk '{print $2}')
    echo "File system type: $FSTYPE"

    if [ $FSTYPE == "ext4" ]; then
        mkfs.ext4 /dev/appsvg/apps_lv
    else
        mkfs.ext3 /dev/appsvg/apps_lv
    fi

    mkdir /apps
    printf "/dev/appsvg/apps_lv\t/apps\text4\tdefaults\t1 2\n" | tee --append /etc/fstab
    mount /apps
fi

for x in {c..z}
do
	v="sd$x"
    if [ -b "/dev/$v" ]&&[ ! -b "/dev/$v1" ]
    then
        echo "Paritioning device /dev/$v"
		echo "Alignment: $ALIGN"
        parted -s $ALIGN /dev/$v mklabel gpt mkpart primary 0% 100%
    fi
done

###################### IMPORTANT!!!! ########################
## Make sure SSH config and user guest customization comes last.
## Any additions to this file should come before this comment.
###################### IMPORTANT!!!! ########################
if [ -f /etc/sudoers ]
then
    echo 'Disabling requiretty for sudoers'
    sed -e '/Defaults\s\+requiretty/ s/^#*/#/' -i /etc/sudoers
fi

if id -u ec2-user >/dev/null 2>&1
then
    echo 'ec2-user already exists'
else
    echo 'Creating ec2-user'
    /usr/sbin/useradd ec2-user
    tempv=`awk -F: '$1 == "root" {print $2}' /etc/shadow`
    cp /etc/shadow /etc/shadow.bak
    chmod u+w /etc/shadow
    awk -F: "BEGIN {OFS=FS;} \$1 == \"ec2-user\" {\$2=\"$tempv\"} 1" /etc/shadow.bak > /etc/shadow
    chmod u-w /etc/shadow
    grep -q -F 'ec2-user ALL=(ALL) NOPASSWD: ALL' /etc/sudoers || echo 'ec2-user ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
fi

SSH_PUBLIC_KEY=$(graniteOvfProperty sshPublicKey)
if [ ! -z "$SSH_PUBLIC_KEY" ]
then
    for USERNAME in 'root' 'ec2-user'
    do
        echo "Configuring SSH access for $USERNAME"

        PROFILE_ROOT=$(userProfile "$USERNAME")

        echo "Ensuring $PROFILE_ROOT/.ssh exists"
        mkdir -p $PROFILE_ROOT/.ssh

        echo "Writing SSH key to $PROFILE_ROOT/.ssh/authorized_keys"
        printf "$SSH_PUBLIC_KEY\\n" >> $PROFILE_ROOT/.ssh/authorized_keys

        echo "Modifying $PROFILE_ROOT/.ssh/authorized_keys attributes"
        chmod 0600 $PROFILE_ROOT/.ssh/authorized_keys

        echo "Modifying $PROFILE_ROOT/.ssh/authorized_keys owner"
        chown $USERNAME $PROFILE_ROOT/.ssh/authorized_keys

        echo "Modifying $PROFILE_ROOT/.ssh attributes"
        chmod 0700 $PROFILE_ROOT/.ssh

        echo "Modifying $PROFILE_ROOT/.ssh owner"
        chown $USERNAME $PROFILE_ROOT/.ssh

        if command -v restorecon >/dev/null 2>&1
        then
            echo "Running restorecon on $PROFILE_ROOT/.ssh"
            restorecon -R -v $PROFILE_ROOT/.ssh    
        fi
    done
fi

USER_CUSTOMIZATION_DATA=$(graniteOvfProperty userCustomizationData)
if [ ! -z "$USER_CUSTOMIZATION_DATA" ]
then
    USERNAME=$(whoami)
    PROFILE_ROOT=$(userProfile "$USERNAME")

    USER_SCRIPT_DIR=$PROFILE_ROOT/.customization
    USER_SCRIPT=$USER_SCRIPT_DIR/UserScript.sh
    echo "Ensuring $USER_SCRIPT_DIR exists"
    mkdir -p $USER_SCRIPT_DIR

    echo "Writing user customization data to $USER_SCRIPT"
    echo $USER_CUSTOMIZATION_DATA | base64 --decode > $USER_SCRIPT

    echo "Making $USER_SCRIPT executable"
    chmod +x $USER_SCRIPT

    echo "Executing $USER_SCRIPT"
    $USER_SCRIPT
fi
###################### IMPORTANT!!!! ########################
## Make sure SSH config and user guest customization comes last.
## This comment should be the last thing in this file.
###################### IMPORTANT!!!! ########################
