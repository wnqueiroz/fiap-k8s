kubectl create namespace redis
kubectl create namespace staging

kubectl apply -f redis -n redis
kubectl apply -f nestjs-redis -n staging

# Cleanup!
kubectl delete -f redis -n redis
kubectl delete -f nestjs-redis -n staging
