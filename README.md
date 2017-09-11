# Kubernetes_AWS_Flannel_Ansible-BOTO
Ansible Framework to Create Kubernetes Cluster with Flannel on AWS

![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/ansible_aws.png)![alt text](https://www.cncf.io/wp-content/uploads/sites/2/2017/05/logo_kubernetes.png)

## Provisioning Kubernetes with Flannel using Ansible & Python-Boto on Amazon Web Services

Ansible’s EC2 module uses python-boto library to call AWS API, and boto needs AWS credentials in order to function.

The solution is organized in 3 parts:

* A generic Ansible role that uses ec2 module to provision
* Yaml files with variables that will be used as parameters for each type of EC2 host
* Playbook that combines the variables file with the role

## Prerequisites

* ansible 
* awscli
* python-pip
* boto
* AWS account which can allow users to use Large and Medium EC2 instances (Usually not available in free-tier)
* AWS account access and secret keys

## Procedure

1.  A CloudFormation template is used to create a build-host which has all the packages required as specified above (ansible, awcli, python-pip and boto), this includes the repo with ansible-framework required to provision the cluster.

    * Creates VPC, Subnet, EC2 Instance
    * Installs ansible, awscli, python-pip and boto as EC2 comes up (cloud-init/userdata)
    * Gets required install packages from GIT

2.  Once the build-host is available, user should provide their respective AWS credentials using awscli. Detailed procedure is furnished below in the document.
3.  The ansible framework on the host triggers required tasks to provision the cluster on AWS.

## Usage

1. Choose the Region from AWS web portal. For consistency and mapping of AMI's used in the template select **US-West(Oregon)**

    ![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws-16.png)
    
2. Download the CloudFormation template from the location below to the local machine

   wget https://raw.githubusercontent.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/master/CFormation-BHost-K8S-Flannel.json#

3. Select CloudFormation service from AWS web portal 

    ![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws1.png)

4. Select “Create Stack” Option
 
    ![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws2.png)
    
5. Select Upload a template and choose the file downloaded above
 
    ![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws3.png)
    
6. Provide a “Stack Name”

    ![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws-17.png)
    
7. As we are not enabling any IAM access or select “Next” and “Create” in the review page to initiate the stack.

    ![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws5.png)
    
    ![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws6.png)

8. Watch for the stack to complete

    ![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws7.png)
     
9. Once the stack creation is complete then proceed to the EC2 (from “services” and select the “running instances”)dashboard      to get the public_ip of the instance. Select the instance with the name that have been provided in step.5 and you can get      the public_ip as shown below.

    ![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws8.png)
    
10. Use “root@<public_ip>”, “Password: contrail1” to access the instance from the local terminal and you should see directory      named “Kubernetes_AWS_Flannel_Ansible-BOTO” in “/root”

11. Get the access key and secret from AWS portal. Instructions are mentioned below:

    a. Select “My Security Credentials”
    
       ![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws9.png)
       
    b. Select “Access Keys (Access Key ID and Secret Access Key)”
    
       ![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws10.png)
       
    c. Select “Create New Access Key” and choose “Download File”
    
       ![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws11.png)

12. In the Build-Host instance created above use  “aws configure” to configure the access details. The CLI will prompt the         user to provide the keys one by one.

    ![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws12.png)
       
    Provide the credentials from the csv file downloaded above and select “us-west-2” as the default region

13. Enter the **“Kubernetes_AWS_Flannel_Ansible-BOTO”** directory and run:

    ```
     ./ create_key_pair.sh      #Creates a Key_Pair required by ansible initially to login
     ./ create_cluster.sh       #Triggers the ansible tasks to create the cluster
    
    ```
14. Once the ansible completes the provisioning the user can see a “contrail-K8S-Master” and “contrail-K8S-Node” on the EC2       dashboard with Kubernetes-Master and Node installed with Flannel networking. User can enter the terminal using the             public_ip “root@<public_ip>” "password: contrail1". Refer step.8 for the details on getting the public_ip.

15. To access the Kubernetes Web-UI **"http://<public_ip_contrail-K8S-Minion>:9090"**, no credentials needed. In this scenario as we are not using any 'node_selector' in case Web_UI is inaccesible using Minion, user can login to the Master with the public_ip mentioned on the AWS_EC2 portal and see the details on the terminal:

    Find the location of WebUI:
    ! [alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws18.png)
    
    Access WebUI:
    ![alt text](https://github.com/gokulpch/Ansible_Base_Hosts_CloudFormation-Templates/blob/master/img/aws-K8S-UI.png)

16. To Delete all the components on AWS (VPC, IGW, Subnets, EC2 etc.) use delete_cluster in **“Kubernetes_AWS_Flannel_Ansible-BOTO”** directory, run:

      ```
         ./ delete_cluster.sh      #Deletes the cluster
    
      ```


### Ansible - Specific Usage

a.  Just run the “upgrade” and “installdocker” part of the playbook

```ansible-playbook example.yml --tags "configuration,packages"```

b. Run a playbook without certain tasks

```ansible-playbook example.yml --skip-tags "notification"```

### _For Sample_YAML files and some Click_Through Scripts_

Clone the following repository to the Desktop if using the Kubernetes Dashboard to upload the YAML file. If users are using CLI these are pre-packaged and available on Master

git clone https://github.com/gokulpch/Kubernetes_Demo_YAML

#### License

This project is licensed under the **MIT** License - see the [LICENSE.md](LICENSE.md) file for details

#### Authors

* **Gokul Chandra** - (https://github.com/gokulpch)
