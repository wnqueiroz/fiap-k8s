minikube start

kubectl create namespace redis

watch kubectl get all -n redis

kubectl apply -f redis/01-redis-master-deployment.yaml -n redis

# kubectl logs redis-master-f46ff57fd-d4d2p -f -n redis

kubectl apply -f redis/02-redis-master-service.yaml -n redis

kubectl apply -f redis/03-redis-slave-deployment.yaml -n redis
kubectl apply -f redis/04-redis-slave-service.yaml -n redis

# Cleanup!
kubectl delete ns redis