#!/bin/bash
clear
read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl cluster-info\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis displays the cluster info\e[0m"

for i in `seq 1 5`;do echo;done

kubectl cluster-info

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl config view\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis displays the cluster config\e[0m"

for i in `seq 1 5`;do echo;done

kubectl config view

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl get nodes\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis displays the Master and Nodes information\e[0m"

for i in `seq 1 5`;do echo;done

kubectl get nodes

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl get cs\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis displays the health of kubernetes-cluster services\e[0m"

for i in `seq 1 5`;do echo;done

kubectl get cs

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl get rc\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis displays the replication controllers in default namespace, can add a flag --namespace <namespace_name> to 
              list in a specific namespace, sample - kubectl get rc --namespace contrail\e[0m"

for i in `seq 1 5`;do echo;done

kubectl get rc

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl get services\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis displays the services in default namespace, can add a flag --namespace <namespace_name> to 
              list in a specific namespace,  sample - kubectl get services --namespace contrail\e[0m"

for i in `seq 1 5`;do echo;done

kubectl get services

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl describe services\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis describes a service with provided service name and namespace, sample - kubectl describe service 
              kubernetes --namespace default\e[0m"

for i in `seq 1 5`;do echo;done

kubectl describe services kubernetes

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl get pods --all-namespaces\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis list all the pods in all the available namespaces\e[0m"

for i in `seq 1 5`;do echo;done

kubectl get pods --all-namespaces

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl get pods --all-namespaces -o wide\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis list all the pods with extensive details in all the available namespaces\e[0m"

for i in `seq 1 5`;do echo;done

kubectl get pods --all-namespaces -o wide

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl get pods --namespace kube-system -o wide\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis list all the pods with extensive details in a specific namespace Kube-System\e[0m"

for i in `seq 1 5`;do echo;done

kubectl get pods --namespace kube-system -o wide

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl describe nodes master\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis provides information on the node\e[0m"

for i in `seq 1 5`;do echo;done

kubectl describe nodes master

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl describe pods kube-apiserver-master\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis provides detailed information on pod kube-apiserver-master\e[0m"

for i in `seq 1 5`;do echo;done

kubectl describe pods kube-apiserver-master --namespace kube-system

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl logs etcd-master --namespace kube-system\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mDump logs of a container etcd-master\e[0m"

for i in `seq 1 5`;do echo;done

kubectl logs etcd-master --namespace kube-system

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl get events\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis displays all the recent events on the cluster\e[0m"

for i in `seq 1 5`;do echo;done

kubectl get events

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl get pod etcd-master --namespace kube-system -o=yaml\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis displays the YAML composition of a pod\e[0m"

for i in `seq 1 5`;do echo;done

kubectl get pod etcd-master --namespace kube-system -o=yaml

for i in `seq 1 5`;do echo;done
