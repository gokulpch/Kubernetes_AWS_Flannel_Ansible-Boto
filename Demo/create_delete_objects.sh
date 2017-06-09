#!/bin/bash
clear

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl create -f Nspace.yaml\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis creates a Namespace using YAML provided\e[0m"

for i in `seq 1 5`;do echo;done

kubectl create -f Nspace.yaml

for i in `seq 1 5`;do echo;done

kubectl get namespaces

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl create -f Pod.yaml\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis creates a pod using the YAML provided\e[0m"

for i in `seq 1 5`;do echo;done

kubectl create -f Pod.yaml

for i in `seq 1 5`;do echo;done

kubectl get pods --namespace kube-demo

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl create -f Service.yaml\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis creates a Service using the YAML provided\e[0m"

for i in `seq 1 5`;do echo;done

kubectl create -f Service.yaml

for i in `seq 1 5`;do echo;done

kubectl get svc --namespace kube-demo

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl create -f RepController.yaml\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis creates a Replication_Controller using the YAML provided\e[0m"

for i in `seq 1 5`;do echo;done

kubectl create -f RepController.yaml

for i in `seq 1 5`;do echo;done

kubectl get rc --namespace kube-demo

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl delete -f Pod.yaml\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis deletes the pod using YAML provided to delete a pod user can use 
              kubectl delete pod <pod_name> --namespace <namespace_name> \e[0m"

for i in `seq 1 5`;do echo;done

kubectl delete -f Pod.yaml

for i in `seq 1 5`;do echo;done

kubectl get pods --namespace kube-demo

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl delete -f Service.yaml\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis deletes the service using YAML provided to delete a pod user can use 
              kubectl delete service <service_name> --namespace <service_name> \e[0m"

for i in `seq 1 5`;do echo;done

kubectl delete -f Service.yaml

for i in `seq 1 5`;do echo;done

kubectl get svc --namespace kube-demo

for i in `seq 1 5`;do echo;done

read -p "Press [Enter] key to Execute Next Command..."

for i in `seq 1 5`;do echo;done

printf "\e[93mkubectl delete -f RepController.yaml\e[0m"

for i in `seq 1 5`;do echo;done

printf "\e[44mThis deletes the rc using YAML provided to delete a pod user can use 
              kubectl delete rc <rc_name> --namespace <namespace_name> \e[0m"

for i in `seq 1 5`;do echo;done

kubectl delete -f RepController.yaml

for i in `seq 1 5`;do echo;done
