mkdir ./configs

mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

wget https://raw.githubusercontent.com/superducktoes/cloud_lab/main/configs/pods.yaml -P ./configs
wget https://raw.githubusercontent.com/superducktoes/cloud_lab/main/configs/services.yaml -P ./configs
kubectl apply -f configs/
