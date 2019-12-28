mount /dev/cdrom /mnt
cd /mnt
ls -la
cp VMwareTools-9.4.15-2827462.tar.gz  /root
cd /root
umount /mnt
tar -xvzf VMwareTools-9.4.15-2827462.tar.gz 
cd vmware-tools-distrib/
clear
./vmware-install.pl 
clear
rpm -qa | grep open
rpm -e open-vm-tools
rpm -qa | grep open
./vmware-install.pl --default
./vmware-install.pl 
clear
yum install make
yum install gcc
yum install kernel-header
yum install kernel
yum install kernel-headers
./vmware-install.pl  
shutdown 
mount /dev/cdrom /mnt
cp /mnt/VMwareTools-10.1.10-6082533.tar.gz /root
cd /root
umount /mnt
dir
rm vmware-tools-distrib/ -Rf
rm VMwareTools-9.4.15-2827462.tar.gz 
tar -xvzf VMwareTools-10.1.10-6082533.tar.gz 
cd vmware-tools-distrib/
dir
cd  bin
cd ..
dir
./vmware-install.pl --default
cat /etc/redhat-release 
yum update
yum update -y
cat /etc/redhat-release 
df
shutwodn -h now
shutdown -h now
df
yum update -y
cat /etc/redhat-release 
shutdown -h now
hostnamectl set-hostname kube-master
vim /etc/hosts
ip a| grep inet
vim /etc/hosts
q!
qq!
vim /etc/hosts
sudo yum update 
sudo reboot
kubectl cluster-info
kubectl get services --all-namespaces
kubectl edit services -n kube-system kubernetes-dashboard
kubectl get services --all-namespaces

kubectl get services pods -o wide
kubectl get  pods -o wide
kubectl get pods -o wide -n kube-system
exit
kubectl get nodes
yum install docker
systemctl status docker
systemctl enable --now docker
systemctl status docker
getenforce
service firewalld status
cat << EOF >> /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg

cat << EOF >> /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

sudo yum update
sudo yum install kubeadm kubectl 
systemctl restart kubelet && systemctl enable kubelet
systemctl status kubelet
systemctl status kubelet -l
systemctl restart kubelet
systemctl status kubelet -l
systemctl restart kubelet
systemctl status kubelet
sudo yum remove kubelet
yum clean-all
yum clean all
yum update
yum install kubeadm kubectl 
systemctl status kubelet
service docker status
service kubelet status
kubelet --version
kubeadm init --pod-network-cidr=10.244.0.0/16
sed -i '/swap/d' /etc/fstab 
sudo swapoff -a
modprobe br_netfilter
echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
kubeadm init --pod-network-cidr=10.244.0.0/16
mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get nodes
kubectl get nodes -w
kubectl get nodes 
kubectl cluster-info 
kubectl get nodes -o wide
kubectl config view
kubectl get pods --all-namespaces
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/bc79dd1505b0c8681ece4de4c0d86c5cd2643275/Documentation/kube-flannel.yml
kubectl delete -f https://raw.githubusercontent.com/coreos/flannel/bc79dd1505b0c8681ece4de4c0d86c5cd2643275/Documentation/kube-flannel.yml
kubectl get pods --all-namespaces
kubectl cluster-info
kubectl version
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
kubectl get pods -o wide
kubectl get nodes -o wide
kubectl get nodes
kubectl get pods --all-namespaces
ls
mkdir dashboard
cd dashboard/
ls
vim admin-user-sa.yaml
kubectl get serviceaccounts
kubectl get serviceaccounts --all-namespaces
ls
kubectl get serviceaccounts --all-namespaces | grep admin
kubectl apply -f admin-user-sa.yaml
kubectl get serviceaccounts --all-namespaces | grep admin
kubectl get cluster-roles
kubectl get roles
kubectl get cluster-roles
kubectl get clusterroles
kubectl get clusterroles -n kube-system
kubectl get clusterroles -n kube-system | grep cluster
kubectl describe clusterroles cluster-admin
kubectl describe clusterroles -l Labels:kubernetes.io/bootstrapping=rbac-defaults
kubectl describe clusterroles -l kubernetes.io/bootstrapping=rbac-defaults
ls
vim admin-user-role-binding.yaml
kubectl apply -f admin-user-role-binding.yaml
vim admin-user-role-binding.yaml
kubectl apply -f admin-user-role-binding.yaml
kubectl -n kube-system get secret
kubectl -n kube-system get secret | grep admin-user
kubectl -n kube-system get secret | grep admin-user | awk '{ print $1 }'
kubectl describe secret admin-user-token-p2q7l
kubectl describe secret admin-user-token-p2q7l -n kube-system
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/heapster.yaml
kubectl delete -f https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/heapster.yaml
curl https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/heapster.yaml
ls
curl -o heapster.yaml https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/heapster.yaml
ls
vim heapster.yaml 
kubectl apply -f heapster.yaml 
kubectl delete -f https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/heapster.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/influxdb.yaml
kubectl delete -f https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/influxdb.yaml
kubectl proxy
kubectl get nodes
kubectl delete node vm-101932549
kubectl get nodes
kubectl alpha checks-expiration
kubectl certs checks-expiration
kubectl alpha certs checks-expiration
kubectl certs check-expiration
kubectl --help | grep certs
kubeadm certs check-expiration
kubeadm alpha certs check-expiration
kubeadm --help
kubeadm alpha certs check-expiration
kubectl get pods
kubectl get nodes
kubectl get nodes -o wide
kubectl run nginx
ls
cd dashboard/
ls
cd ..
kubectl apply -f https://raw.githubusercontent.com/justmeandopensource/kubernetes/master/dashboard/heapster.yaml
kubectl delete -f https://raw.githubusercontent.com/justmeandopensource/kubernetes/master/dashboard/heapster.yaml
kubectl get pods --all-namespaces
kubectl get services
kubectl get services --all-namespaces
kubectl get pods -o wide
kubectl get pods -o wide -n kube-system
kubectl proxy
kubectl cluster-info
kubectl proxy
kubectl get pods
kubectl get nodes
kubectlapi-resources 
kubectl api-resources 
kubectl api-resources | less
kubectl api-resources | sort | less
kubectl api-resources -o wide
kubectl explain ingresses
kubectl api-resources
kubectl api-resources -o wide
kubectl explain roles
kubectl explain pods
kubectl --help
kubectl help | grep explain
kubectl help
kubectl help | grep -A 5 -B 5 explain 
kubectl explain annotate
kubectl annotate help
kubectl api-resources
kubectl api-resources --api-group rbac.authorization.k8s.io
kubectl api-resources --api-group rbac.authorization.k8s.io -o wide
kubectl api-versios
kubectl api-versions
kubectl api-resources --api-group autoscaling/v1 -o wide
kubectl api-resources --api-group autoscaling/v2beta1 -o wide
kubectl explain autoscaling/v1
kubectl api-resources -o wide
kubectl api-versions
kubectl explain roles
kubectl explain help
kubectl explain
kubectl explain --help
kubectl api-resources
kubectl explain --help
kubectl explain pods.spec.containers
kubectl explain pods.spec
kubectl explain pods.spec | less
kubectl explain pods.spec.container | less
kubectl explain pods.spec.containers | less
kubectl api-resources
kubectl api-resources | head -n2
kubectl api-resources | grep roles
kubectl api-resources -o wide| grep roles
kubectl api-resources --api-group rbac.authorization.k8s.io 
kubectl api-versions
kubectl api-versions | head -n2
kubectl get deployments.v1.apps -n kube-systrem
kubectl get deployments.v1.apps -n kube-system
kubectl get deployments -n kube-system
kubectl edit deployments -n kube-system
kubectl get deployments.v1 -n kube-system
kubectl get pods.v1 -n kube-system
kubectl get pods.v1
kubectl get pods
kubectl get pods -n kube-system
kubectl get pods.v1 -n kube-system
kubectl edit pod etcd-kube-master
kubectl edit pod etcd-kube-master -n kube-system
kubectl get nodes -
kubectl get nodes 
kubectl get deployments.v1.apps -n kube-system
kubectl api-resources 
kubectl api-resources | head -n5
kubectl api-resources --shortnames
kubectl api-resources --shortnames cs
kubectl api-resources --name endpoints
kubectl api-resources --help
kubectl api-resources --name=endpoints
kubectl api-resources | head -n5
kubectl api-resources --shortname=endpoints
kubectl api-resources --sort-by=name
kubectl api-resources --sort-by=shortname
kubectl api-resources --sort-by=kind
kubectl api-resources --api-group=policy
kubectl api-resources --api-group=policy --sort-by=name
kubectl config-view
kubectl config view
kubectl get namespaces
kubectl config set-context --current --namespace=kube-system
kubectl config view
kubectl get pods
kubectl edit config
kubectl config edit
kubectl config help
kubectl config --help
kubectl config --current-context
kubectl config current-context
kubectl config get-contextx
kubectl config get-contexts
kubectl api-resources --namespaces=true
kubectl api-resources --namespaced=true
kubectl get namespaces
kubectl get pods
kubectl get pods --field-selector=status.phase!=Runnung
kubectl get pods coredns-6955765f44-2s6h8 
kubectl describe pods coredns-6955765f44-2s6h8 
kubectl describe pods coredns-6955765f44-2s6h8  | less
kubectl get pods --field-selector=Ready=False
kubectl get pods --field-selector Ready=False
kubectl get pods --field-selector Conditions.Ready=False
kubectl edit pods coredns-6955765f44-2s6h8 
kubectl get context
kubectl get user-context
kubectl get contexts
history | grep context
kubectl get-contexts
kubectl config  get-contexts
kubectl config set-context --current --namespace=default
kubectl get pods
kubectl config view
kubectl describe nodes | less
kubectl get nodes
kubectl describe node node-1
kubectl describe node node-1 | less
ssh node-1 free-h 
ssh node-1 "free -h"
kubectl describe node node-1 | less
kubectl describe node node-1 -o json
kubectl describe node node-1 
kubectl describe node node-1 -o yaml
kubectl describe nodes node-1 -o yaml
kubectl get nodes node-1 -o yaml
kubectl get nodes node-1 -o json | less
kubectl get nodes
kubectl get pods
kubectl get pods --all-namespaces
kubectl get nodes -o json
docker manifest
ls -al
docker --version
ssh node-1
cd /etc/docker/certs.d/
ls
cd ..
ls
sudo locate .docker
cd
kubelet --help
kubelet --cloud-provider
kubelet info
kubelet --help | less
vim /etc/kubernetes/kubelet.conf 
diff ~/.kube/config /etc/kubernetes/kubelet.conf
diff -u -b  ~/.kube/config /etc/kubernetes/kubelet.conf
q
kube-api-server 
kube-apiserver 
kubectl cluster-info
kubectl version
kube-apiserver
sudo kube-apiserver
kubectl proxy --port=8080 &
curl http://localhost:8080/api/
curl http://localhost:8080/api/ -o yaml
curl http://localhost:8080/api/ 
kube-apiserver
ls -al
kube-apiserver --help
systemctl list-units | grep kube
kubectl get nodes
kube-apiserver --help
kube-apiserver
kubeadm --help
kubeadm config
strace kubeadm --help
strace kubeadm --help | less
strace kubeadm --help
reset
strace ls
kubectl get nodes
kubectl get pods --all-namespaces
kubectl get statefulsets
kubectl get statefullsets
kubectl get statefull-sets
kubectl get --help
kubectl get help
kubectl get statefull-sets
kubectl get statefulsets
kubectl get statefulset
kubectl get statefulset --all-namespaces
kubectl api-resources
kubectl describe pods
kubectl describe pods --all-namespaces
kubectl describe pods --all-namespaces | less
kubectl get taints
kubectl describe nodes | less
kubectl describe nodes | grep taints
kubectl describe nodes | grep "taints"
kubectl describe nodes | less
kubectl describe nodes | grep -i "taints"
kubectl describe pods | grep -i "tolerations"
kubectl describe pods | grep -i "toleratio"
kubectl describe pods --all-namespaces | grep -i "tolerations"
kubectl describe pods --all-namespaces | grep -i -AB  "tolerations"
kubectl describe pods --all-namespaces | grep -i -A -B  "tolerations"
kubectl describe pods --all-namespaces | grep -i -A 5  -B 5  "tolerations"
kubectl describe pods --all-namespaces | grep -i -A 5  -B 5  "tolerations" | less
kubectl describe pods --all-namespaces | grep -i -A 5  -B 5  "tolerations" 
kubectl describe pods --all-namespaces | grep -i -A 5  -B 5  "tolerations"  | less
kubectl describe nodes | grep -i "taints"
kubectl describe nodes | grep -i -A 5 -B 5"taints"
kubectl describe nodes | grep -i -A 5 -B 5 "taints"
kubectl describe pods 
kubectl describe pods --all-namespaces
kubectl describe pods --all-namespaces | less
kubectl get pods --all-namespaces 
kubectl edit  pods coredns-6955765f44-2s6h8 -n kube-system 
kubectl get nodes
vim pods-rs.yaml
kubectl get pods
kubectl apply -f  pods-rs.yaml
kubectl get pods
kubectl get rs
vim frontend.yaml
kubectl apply -f frontend.yaml 
vim frontend.yaml
kubectl apply -f frontend.yaml 
vim frontend.yaml
kubectl apply -f frontend.yaml 
kubectl get pids
kubectl get pods
ls
vim pods-rs.yaml 
kubectl apply -f pods-rs.yaml 
kubectl get pods -w
kubectl delete -f pods-rs.yaml 
vim pods-rs.yaml 
kubectl delete -f pods-rs.yaml 
kubectl get pods -w
ls
ls -ald
ls -ad
ls -a
ls -al
mkdir manifests
cd manifests/
ls
vim Deployment.yaml
kubectl apply -f Deployment.yaml 
vim Deployment.yaml
kubectl apply -f Deployment.yaml 
vim Deployment.yaml
kubectl apply -f Deployment.yaml 
vim Deployment.yaml
kubectl apply -f Deployment.yaml 
kubectl get Deployment.yaml 
vim Deployment.yaml
kubectl get Deployment.yaml 
kubectl get deployments
kubectl get pods
kubectl get -f Deployment.yaml 
vim Deployment.yaml
kubectl apply -f Deployment.yaml 
vim Deployment.yaml
kubectl apply -f Deployment.yaml 
vim Deployment.yaml
kubectl apply -f Deployment.yaml 
kubectl get -f Deployment.yaml 
cat Deployment.yaml 
vim Deployment.yaml
cat Deployment.yaml 
kubectl apply -f Deployment.yaml 
kubectl get -f Deployment.yaml 
kubectl get pods
kubectl apply -f Deployment.yaml 
kubectl delete pod dileep-test
kubectl get pods
kubectl get -f Deployment.yaml 
kubectl rollout status nginx-deployment
kubectl get deployments
kubectl rollout status deployments nginx-deployment
kubectl rollout status deployments nginx-deployment 
kubectl rollout status deployments nginx-deployment
kubectl get deployments
kubectl get deployments -w
kubectl rollout status deployments nginx-deployme
kubectl rollout status deployments nginx-deployment
kubectl get replicationsets
kubectl get replication sets
kubectl get replicationsets
kubectl api resources
kubectl api-resources
kubectl api-resources | grep replication
kubectl get replicationcontrollers
kubectl get rs
kubectl api-resources | grep repli
kubectl get pods --show-labels
kubectl rollout hoistory deployment nginx-deployment
kubectl rollout history deployment nginx-deployment
kubectl set image deployment/nginx-deployment nginx=nginx:1.9.1 --record
kubectl rollout history deployment nginx-deployment
kubectl rollout undo history deployment nginx-deployment
kubectl rollout undo deployment nginx-deployment
kubectl rollout history deployment nginx-deployment
kubectl annotate deployment.v1.apps/nginx-deployment kubernetes.io/change-cause='rolled back to version 1'
kubectl rollout history deployment nginx-deployment
kubectl get deployment nginx-deployment
kubectl scale deployment nginx-deployment --replicas=15
kubectl get deployment nginx-deployment -w
kubectl autoscale deployment nginx-deployment --max=15 --min=3 --cpu-percentage=75
kubectl autoscale deployment nginx-deployment --max=15 --min=3 --cpu-percent=75
kubectl get deployment nginx-deployment -w
kubectl autoscale deployment nginx-deployment --max=10 --min=3 --cpu-percent=75
kubectl get deployment nginx-deployment -w
kubectl get hpa nginx-deployment -w
kubectl get heditnginx-deployment -w
kubectl get heditnginx-deployment 
kubectl edit hpa nginx-deployment 
kubectl get deployment nginx-deployment -w
kubectl rollout status deployment nginx-deployment -w
kubectl patch deployment.v1.apps/nginx-deployment -p '{"spec":{"progressDeadlineSeconds":600}}'
kubectl rollout status deployment nginx-deployment -w
kubectl get deployment nginx-deployment -w
kubectl describe deployment nginx-deployment -o yaml
kubectl get deployment nginx-deployment -o yaml
ls
kubecrl edit deployment nginx-deployment
kubectl edit deployment nginx-deployment
kubectl get pods --all-namespaces -o yaml 
kubectl get pods --all-namespaces -o yaml  | less
kubectl get endpoints
kubectl get endpoints --all-namespaces
kubectl api-resources
kubectl get nodes
kubeclt cluster-info
kubectl cluster-info
kubectl version 
kubectl version --short
kubectl get nodes
cd manifests/
ls
vim job.yaml
kubectl api-resource | grep job
kubectl api-resources | grep job
kubectl explain jobs
vim job.yaml
kubectl apply -f job.yaml
vim job.yaml
kubectl apply -f job.yaml
vim job.yaml
kubectl apply -f job.yaml
vim job.yaml
kubectl apply -f job.yaml
vim job.yaml
kubectl apply -f job.yaml
kubectl get all
kubectl logs pod/helloworld-f8btr
kubectl describe pod/helloworld-f8btr
kubectl get -f job.yaml
cat job.yaml
ls
cp job.yaml cronjob.yaml
vim cronjob.yaml 
kubectl apply -f cronjob.yaml 
kubectl api-resources | grep job
vim cronjob.yaml 
kubectl api-resources | grep job
kubectl apply -f cronjob.yaml 
kubectl explain cronjobs
vim cronjob.yaml 
kubectl apply -f cronjob.yaml 
kubectl pods
kubectl get  pods
kubectl get -f cronjob.yaml 
kubectl get cj
kubectl logs helloworld
kubectl logs cj/helloworld
kubectl get  pods
kubectl get  pods -w
kubectl logs helloworld-f8btr
kubectl delete -f cronjob.yaml 
kubectl get cj
vim cronjob.yaml 
kubectl apply -f cronjob.yaml 
kubectl get cj
kubectl get pods 
kubectl get cj
kubectl describe cj/cronjob
kubectl describe cronjob-1577304480
kubectl describe cj/cronjob
kubectl describe cj/cronjob -w
kubectl pods -w
kubectl get pods -w
kubectl get pods 
cat cronjob.yaml 
kubectl get cj
kubectl get cj -o yaml
kubectl patch cronjob cronjob -p '{"spec":{"suspend":"true"}}'
kubectl patch cronjob cronjob -p '{"spec":{"suspend":"false"}}'
kubectl patch cronjob cronjob -p '{"spec":{"suspend":"True"}}'
kubectl get cj -o yaml
kubectl get cj -o yaml | grep suspend
kubectl patch cronjob cronjob -p '{"spec":{"suspend": "true"}}'
kubectl get cj -o yaml | grep "name, suspend
"
kubectl get cj -o yaml | grep name,suspend
kubectl get cj -o yaml | grep name
kubectl patch cronjob cronjob -p '{"spec":{"suspend": "true"}}'
kubectl api-resources | grep end
kubectl explain endpointslices
kubectl get nodes
kubectl api-resources
kubectl api-resources | grep service
kubeclt explain services
kubectl explain services
kubectl explain nodeport
kubectl explain 
kubectl explain --help
kubectl get services
ip a | grep inet
ip route -n
iproute -n
ip route
kubectl get nodes -o wide
kubectl get pods -o wide
kubectl get services -o wide
traceroute -n 10.96.0.1
kubeadm --help
kubeadm config --help
kubeadm config print
kubeadm config 
kubeadm config --v=5
kube-api
kube-api server
kubectl --feature-gates="ServiceTopology=true"
kubeadm --feature-gates="ServiceTopology=true"
kubectl get nodes
kubectl get pods
kubectl get cj
kubectl edit cj cronjob
kubectl get cj
kubectl get configmaps
kubectl get configmaps --all-namespaces
kubectl get configmaps coredns -n kube-system | less
kubectl get configmaps coredns -n kube-system -o yaml
kubectl get configmaps coredns -n kube-system -o yaml | less
kubectl get services
dig kubernetes.default.svc.cluster.local
dig kubernetes.default.svc.cluster.local +search _short
dig kubernetes.default.svc.cluster.local +search +short
kubernetes.default.svc.cluster.local 
dig kubernetes.default.svc.cluster.local 
dig kubernetes.default.svc.cluster.local +search +short
cd manifests/
ls
vim pod.yaml
kubectl apply-f pod.yaml 
kubectl apply -f pod.yaml 
vim pod.yaml
kubectl apply -f pod.yaml 
kubectl logs pod.yaml 
kubectl logs dileep-test
kubectl edit pod dileep-test
kubectl logs dileep-test
kubectl get pods
vim pod.yaml 
kubectl apply -f pod.yaml 
kubectl delete pod dileep-text
kubectl delete pod dileep-test
kubectl apply -f pod.yaml 
kubectl get pods
kubectl it dileep-text -- /bin/bash
kubectl exec -it dileep-text -- /bin/bash
kubectl exec -it dileep-test -- /bin/bash
kubectl get pods
kubectl logs dileep-test
kubectl get pods
kubectl logs helloworld-f8btr
kubectl delete pods helloworld-f8btr
kubectl get pods
kubectl delete pods cronjob-1577397840-gmtpj
kubectl delete pods cronjob-1577397900-78bkx
kubectl delete pods cronjob-1577397960-nxg8l
kubectl get pods 
kubectl delete pods all
kubectl delete pods all -n default
kubectl get pods all -n default
kubectl get pods
kubectl delete pods all
kubectl delete pods
kubectl delete pods --all
kubectl get pods 
kubectl get all
kubectl delete cj cronjob
kubectl delete deployment nginx-deployment
kubectl get all
kubectl delete replicasets frontend
kubectl get all
kubectl delete job job.batch/helloworld
kubectl delete job.batch/helloworld
kubectl get all
kubectl get hpa
kubectl delete hpa nginx-deployment
kubectl get all
docker history nginx
kubectl get images
docker images
docker pull nginx
docker images
docker history docker.io/nginx
ls run-my-nginx.yaml
vim run-my-nginx.yaml
kubectl apply -f run-my-nginx.yaml 
kubectl get pods 
kubectl get pods -o yaml | grep IP
ping 10.244.2.119
ssh 10.244.2.119
kubectl exec pod my-nginx-75897978cd-9m4lv -- /bin/bash
kubectl exec -itpod my-nginx-75897978cd-9m4lv /bin/bash
kubectl exec -it pod my-nginx-75897978cd-9m4lv /bin/bash
kubectl exec -it my-nginx-75897978cd-9m4lv /bin/bash
kubectl get services
curl 10.96.0.1:80
curl 10.96.0.1
ping 10.96.0.1
host 10.96.0.1
kubectl get pods
kubectl exec my-nginx-75897978cd-9m4lv --printenv
kubectl exec my-nginx-75897978cd-9m4lv -- printenv
kubectl run curl --image=radial/busyboxplus:curl -i -tty
kubectl get services
kubectl run curl --image=radial/busyboxplus:curl -i --tty
history  | less
kubectl get configmaps coredns -n kube-system
kubectl get configmaps coredns -n kube-system -o yaml
kubectl run curl --image=radial/busyboxplus:curl -i --tty
kubectl exec curl --image=radial/busyboxplus:curl -i --tty
kubectl get all
kubectl -exec curl-69c656fd45-qpkgp -- /bin/bash
kubectl -exec -it curl-69c656fd45-qpkgp -- /bin/bash
kubectl -exec --it curl-69c656fd45-qpkgp -- /bin/bash
kubectl exec -it curl-69c656fd45-qpkgp /bin/bash
kubectl exec -it curl-69c656fd45-qpkgp curl
kubectl exec -it curl-69c656fd45-qpkgp -- curl
kubectl exec -i --tty curl-69c656fd45-qpkgp 
kubectl exec -i --tty curl-69c656fd45-qpkgp curl
kubectl describe curl-69c656fd45-qpkgp
kubectl get pods
kubectl describe pod curl-69c656fd45-qpkgp
kubectl delete pod curl-69c656fd45-qpkgp
kubectl get pods
kubectl delete pod curl-69c656fd45-qpkgp
kubectl get pods
kubectl run curl --image=radial/busyboxplus:curl -i --tty
kubectl get all
kubectl delete deployment curl
kubectl get pods
kubectl get pods -w
kubectl get pods 
kubectl run curl --image=radial/busyboxplus:curl -i --tty
kubectl get services
kuectl get services -n kube-system
kubectl get services -n kube-system
kubectl get kube-dns -n kube-system -o yaml
kubectl get service kube-dns -n kube-system -o yaml
kubectl get services
kubectl describe services kubernetes
cd manifests/
ls
vim run-my-nginx.yaml 
vim pod.yaml 
vim DEpl
vim Deployment.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
vim service.yaml
kubectl apply -f service.yaml 
kubectl get services
cat service.yaml 
kubectl get all
kubectl get services
kubectl get services -o yaml | less
kubectl config view
kubectl get services -n kube-system
kubectl get services kube-dns -n kube-system -o yaml
kubectl describe services kube-dns -n kube-system 
kubectl get deployments
kubectl get services
kubectl get-contexts
kubectl get contexts
kubectl config get-contexts
cd
git clone https://github.com/dileepchebolu/examples.git
cat /etc/redhat-release 
yum install git
git clone https://github.com/dileepchebolu/examples.git
ls
cd examples/
ls
cd staging/
ls
cd cluster-dns/
ls
cd ..
ls
cd ..
ls
cd ..
ls
updatedb
locate hack
kubectl get all 
kubectl exec -it curl-69c656fd45-nx8t6 -- cat /etc/resolv.conf
kubectl exec -it curl-69c656fd45-nx8t6 --curl nginx-service
kubectl exec -it curl-69c656fd45-nx8t6 -- nslookup nginx-service
kubectl exec -it curl-69c656fd45-nx8t6 -- nslookup nginx-service.default.svc.cluster.local
kubectl exec -it curl-69c656fd45-nx8t6 -- curl http://10.96.198.235
kubectl exec -it curl-69c656fd45-nx8t6 -- curl http://nginx-service.default.svc.cluster.local
ssh node-1 "ipa | grep inet"
ssh node-1 "ifconfig | grep inet"
ssh node-2 "ifconfig | grep inet"
kubectl get nodes
ssh node-1 "iptables -F && iptables -t nat -F && iptables -t mangle -F && iptables -X"
ssh node-2 "iptables -F && iptables -t nat -F && iptables -t mangle -F && iptables -X"
kubectl exec -it curl-69c656fd45-nx8t6 -- curl http://nginx-service.default.svc.cluster.local
kubectl exec -it curl-69c656fd45-nx8t6 -- nslookup kubernetes.default
kubectl get pods -n kube-system
kubectl get deployments  -n kube-system
kubectl edit deployments coredns  -n kube-system
kubectl get pods -n kube-system
kubectl get pods --show-labels
kubectl get pods --show-labels -n kube-system
kubectl delete pod -n kube-system -l k8s-app=kube-dns
kubectl get pods --show-labels -n kube-system
kubectl exec -it curl-69c656fd45-nx8t6 -- nslookup kubernetes.default
kubectl get svc 
kubectl get svc -n kube-system
kubectl get pods -n kube-system
kubectl logs coredns-6955765f44-d25n9
kubectl logs coredns-6955765f44-d25n9 -n kube-system
for p in $(kubectl get pods --namespace=kube-system -l k8s-app=kube-dns -o name); do kubectl logs --namespace=kube-system $p; done
kubectl get pods --namespace=kube-system -l k8s-app=kube-dns -o name
kubectl get pods --namespace=kube-system -l k8s-app=kube-dns 
kubectl get pods --namespace=kube-system -l k8s-app=kube-dns -o yaml
kubectl get pods --namespace=kube-system -l k8s-app=kube-dns -o name
kubectl get pods --namespace=kube-system -l k8s-app=kube-dns 
kubectl get pods --namespace=kube-system -l k8s-app=kube-dns -o READY
kubectl get pods --namespace=kube-system -l k8s-app=kube-dns -o AGE
kubectl get pods --namespace=kube-system -l k8s-app=kube-dns -o name
kubectl logs --namespace=kube-system $(kubectl get pods --namespace=kube-system -l k8s-app=kube-dns -o name | head -1) -c kubedns
kubectl get pods --namespace=kube-system -l k8s-app=kube-dns
kubecrl get pods coredns-6955765f44-d25n9 -o yaml
kubectl get pods coredns-6955765f44-d25n9 -o yaml
kubectl get pods coredns-6955765f44-d25n9 -o yaml -n kube-system
kubectl get pods coredns-6955765f44-d25n9 -o yaml -n kube-system | less
kubectl edit pods coredns-6955765f44-d25n9 -n kube-system 
kubectl edit pods coredns-6955765f44-d25n9 -n kube-system | grep image
