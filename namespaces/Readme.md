Kubectl Namespace Commands Cheat Sheet 
1. Basic Management
Commands for viewing and creating namespaces within your cluster. 
List all namespaces:
kubectl get namespaces or kubectl get ns
Create a namespace:
kubectl create namespace <name>
Describe a namespace:
kubectl describe namespace <name>
Delete a namespace:
kubectl delete namespace <name> (Warning: This deletes all resources within it) 
Kubermatic
Kubermatic

2. Context & Configuration
Commands to change your default namespace so you don't have to append -n <name> to every command. 
View current context:
kubectl config current-context
Switch default namespace (Permanent):
kubectl config set-context --current --namespace=<name>
Verify current default namespace:
kubectl config view --minify | grep namespace 
Gist
Gist

3. Resource Interaction 
Commands to manage specific resources (Pods, Services, etc.) relative to namespaces. 
List resources in a specific namespace:
kubectl get pods -n <name>
List resources across all namespaces:
kubectl get pods --all-namespaces or kubectl get pods -A
Run a pod in a specific namespace:
kubectl run <pod-name> --image=<image> -n <name>
Apply a manifest to a specific namespace:
kubectl apply -f <file.yaml> -n <name> 
Kubernetes
Kubernetes

4. Troubleshooting & Advanced
View namespace as JSON (Useful for finalizer issues):
kubectl get namespace <name> -o json
Identify resources not in a namespace:
kubectl api-resources --namespaced=false (To see cluster-wide resources like Nodes) 
Kubernetes
Kubernetes
 +3