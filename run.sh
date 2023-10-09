kubectl config use-context docker-desktop
kubectl cluster-info
kubectl get nodes
kubectl get pods 

echo "Apply deployment"
kubectl apply -f deployment.yaml 
sleep 30
kubectl get deployments
kubectl get pods

echo "Apply service LB"
kubectl apply -f service.yaml 
kubectl get services coffee-service
sleep 10
curl http://localhost/

echo "Delete service LB"
kubectl delete -f service.yaml 
echo "Delete service LB"
kubectl delete -f deployment.yaml 
sleep 30
kubectl get pods 
