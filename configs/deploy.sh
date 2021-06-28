mkdir ./configs
wget https://raw.githubusercontent.com/superducktoes/cloud_lab/main/configs/pods.yaml
wget https://raw.githubusercontent.com/superducktoes/cloud_lab/main/configs/services.yaml
kubectl apply -f configs/
