#Create a container runing in port 8080
kubectl run hello-minikube --image=<image_name> --port=8080
#Expose container to NodePort
kubectl expose deployment <deployment_name> --type=NodePort
kubectl expose pod        <pod_name>        --type=NodePort --name=<service_name>
#Get service url
minikube service <service_name> --url
#Forward temporaly the pod or deploy to the laptop
kubectl port-forward <deployment_name/pod_name> 8081:3000




