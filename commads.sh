#Create a container runing in port 8080
kubectl run hello-minikube --image=<image_name> --port=8080
kubectl run cortijo --replicas=2 --image=enriqueramosmunoz/rolling:cortijo --port=3000
#Expose container to NodePort
kubectl expose deployment <deployment_name> --type=NodePort
kubectl expose pod  <pod_name> --name= <service_name> --type=NodePort
kubectl scale --replicas=20 deployment/cortijo-app-deployment
kubectl create -f deployment.yaml
kubectl patch svc my-cortijo-service -n default -p '{"spec": {"type": "NodePort", "externalIPs":["192.168.1.50"]}}'
kubectl patch svc my-cortijo-service2 -n default -p '{"spec": {"type": "LoadBalancer", "externalIPs":["192.168.1.50"], "post":8000}}'
#Get service url
minikube service <service_name> --url
minikube ip
#Forward temporaly the pod or deploy to the laptop
kubectl port-forward <deployment_name/pod_name> 8081:3000
#Expose with load balancer
kubectl expose rc example \
        --port=8765 \
        --target-port=9376 \
        --name=example-service \
        --type=LoadBalancer



