#!/bin/bash
############################################################################
######
###################Ansible playbook to initiate the cluster#################
######
############################################################################
printf "Running ansible to create K8S cluster"
for i in `seq 1 5`;do echo;done
printf "Opening a new screen session......."
for i in `seq 1 5`;do echo;done
tmux new -d -s K8S-Install 'ANSIBLE_LOG_PATH="/root/install.log" ansible-playbook ./ansible/create_cluster.yml -v'
tmux detach -s K8S-Install
#ansible-playbook ./ansible/create_cluster.yml -v
for i in `seq 1 5`;do echo;done
echo "To attach use 'tmux attach -t K8S-Install'"
for i in `seq 1 2`;do echo;done
echo "To detach(leave the session running) use 'Ctrl-b d'"
for i in `seq 1 5`;do echo;done
