#!/bin/bash
############################################################################
######
########## Deploy Kubernetes Dashboard                                 #####
######
############################################################################
echo "Pulling Kubernetes-Demo Repo............"
git clone https://github.com/gokulpch/Kubernetes_Demo_YAML.git
URL="https://s3-us-west-2.amazonaws.com/contrail-docker-images/K8Sdashboard.yaml"
echo $(date) 'Running wget...'
wget "${URL}"
echo 'Done Copying File.............'
sleep 60s
kubectl --kubeconfig /root/admin.conf create -f /root/K8Sdashboard.yaml
#cd /root/.; kubectl create -f K8Sdashboard.yaml
echo 'Kubernetes Dashboard Created.............'
