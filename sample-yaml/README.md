# Kubernetes_Sample_YAML


## Usage

#### Create

kubectl create -f file.yaml

#### Delete

kubectl delete -f file.yaml



## Namespace

Namespaces enable users to manage different environments within the same cluster. For example, you can have different test and staging environments in the same cluster of machines, potentially saving resources. You can also run different types of server, batch, or other jobs in the same cluster without worrying about them affecting each other.

## Pod

A pod is the basic unit that Kubernetes deals with. Containers themselves are not assigned to hosts. Instead, closely related containers are grouped together in a pod. A pod generally represents one or more containers that should be controlled as a single "application".

## Service 

Services are an interface to a group of containers so that consumers do not have to worry about anything beyond a single access location. By deploying a service, you easily gain discover-ability and can simplify your container designs.

## Replication Controller

The replication controller is delegated responsibility over maintaining a desired number of copies. This means that if a container temporarily goes down, the replication controller might start up another container. If the first container comes back online, the controller will kill off one of the containers.

## Deployment

A Deployment provides declarative updates for Pods and ReplicaSets (the next-generation ReplicationController). You only need to describe the desired state in a Deployment object, and the Deployment controller will change the actual state to the desired state at a controlled rate for you. You can define Deployments to create new ReplicaSets, or remove existing Deployments and adopt all of their resources with new Deployments.
