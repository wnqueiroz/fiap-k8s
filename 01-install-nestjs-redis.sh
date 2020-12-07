kubectl create namespace staging

watch kubectl get all -n staging

kubectl apply -f nestjs-redis/01-configmap.yaml -n staging

# kubectl get configmap -n staging
# kubectl describe configmap nestjs-redis -n staging

kubectl apply -f nestjs-redis/02-secrets.yaml -n staging

# kubectl get secrets -n staging
# kubectl describe secrets nestjs-redis -n staging

kubectl apply -f nestjs-redis/03-deployment.yaml -n staging

kubectl apply -f nestjs-redis/04-service.yaml -n staging

minikube service nestjs-redis --url -n staging

kubectl scale deployment nestjs-redis --replicas=3 -n staging

# Cleanup!
kubectl delete ns staging
