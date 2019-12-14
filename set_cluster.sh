kubectl config --kubeconfig=config-demo set-cluster lenovo --server=https://88.8.70.1 --certificate-authority=.minikube/lenovo.crt
kubectl config --kubeconfig=config-demo set-credentials developer --client-certificate=.minikube/lenovo_client.crt --client-key=.minikube/lenovo_client.key
kubectl config --kubeconfig=config-demo set-context lenovo --cluster=lenovo --namespace=lenovo --user=developer
