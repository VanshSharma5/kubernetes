echo "Imparative way "
echo "kubectl create deploy mynginx1 --image=nginx"

# Imparative way 
kubectl create deploy mynginx1 --image=nginx

echo "Wait 5 second..."
sleep 5

echo "Deployments"
kubectl get deploy 

echo "Wait 5 second..."
sleep 5

echo "Declerative way"
echo "kubectl create -f declerative.yml"
# Declerative way
kubectl create -f declerative.yml

echo "Wait 5 second..."
sleep 5

echo "Deployments"
kubectl get deploy 

echo "Wait 5 second..."
sleep 5

echo "Clean up"
echo "kubectl delete deployment mynginx1"
echo "kubectl delete deployment mynginx2"
# Clean up
kubectl delete deployment mynginx1
kubectl delete deployment mynginx2

sleep 2
echo "Cleaned✅"