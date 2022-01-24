
cd k8s-specs

git pull

minikube start --vm-driver=virtualbox

kubectl config current-context

cat deploy/go-demo-2-db.yml

kubectl create \
    -f deploy/go-demo-2-db.yml

kubectl get -f deploy/go-demo-2-db.yml

kubectl describe \
    -f deploy/go-demo-2-db.yml

kubectl get all

kubectl set image \
    -f deploy/go-demo-2-db.yml \
    db=mongo:3.4

kubectl describe \
    -f deploy/go-demo-2-db.yml

kubectl get all

kubectl edit -f deploy/go-demo-2-db.yml

kubectl create \
    -f deploy/go-demo-2-db-svc.yml

cat deploy/go-demo-2-api.yml

kubectl create \
    -f deploy/go-demo-2-api.yml

kubectl get -f deploy/go-demo-2-api.yml

kubectl set image \
    -f deploy/go-demo-2-api.yml \
    api=vfarcic/go-demo-2:2.0

kubectl rollout status -w \
    -f deploy/go-demo-2-api.yml

kubectl describe \
    -f deploy/go-demo-2-api.yml

kubectl rollout history \
    -f deploy/go-demo-2-api.yml

kubectl get rs

kubectl rollout undo \
    -f deploy/go-demo-2-api.yml

kubectl describe \
    -f deploy/go-demo-2-api.yml

kubectl rollout history \
    -f deploy/go-demo-2-api.yml

kubectl set image \
    -f deploy/go-demo-2-api.yml \
    api=vfarcic/go-demo-2:3.0

kubectl rollout status \
    -f deploy/go-demo-2-api.yml

kubectl set image \
    -f deploy/go-demo-2-api.yml \
    api=vfarcic/go-demo-2:4.0

kubectl rollout status \
    -f deploy/go-demo-2-api.yml

kubectl rollout history \
    -f deploy/go-demo-2-api.yml

kubectl set image \
    -f deploy/go-demo-2-api.yml \
    api=vfarcic/go-demo-2:2.0

kubectl rollout undo \
    -f deploy/go-demo-2-api.yml \
    --to-revision=2

kubectl rollout history \
    -f deploy/go-demo-2-api.yml

kubectl set image \
    -f deploy/go-demo-2-api.yml \
    api=vfarcic/go-demo-2:does-not-exist

kubectl get rs -l type=api

kubectl rollout status \
    -f deploy/go-demo-2-api.yml

echo $?

kubectl rollout undo \
    -f deploy/go-demo-2-api.yml

kubectl rollout status \
    -f deploy/go-demo-2-api.yml

kubectl delete \
    -f deploy/go-demo-2-db.yml

kubectl delete \
    -f deploy/go-demo-2-db-svc.yml

kubectl delete \
    -f deploy/go-demo-2-api.yml

cat deploy/go-demo-2.yml

kubectl create \
    -f deploy/go-demo-2.yml \
    --save-config

kubectl get -f deploy/go-demo-2.yml

cat deploy/different-app-db.yml

kubectl create \
    -f deploy/different-app-db.yml

kubectl get deployments --show-labels

kubectl get deployments -l type=db,vendor=MongoLabs

kubectl set image deployments \
    -l type=db,vendor=MongoLabs \
    db=mongo:3.4

kubectl describe \
    -f deploy/go-demo-2.yml

cat deploy/go-demo-2-scaled.yml

kubectl apply \
    -f deploy/go-demo-2-scaled.yml

kubectl get \
    -f deploy/go-demo-2-scaled.yml

kubectl scale deployment \
    go-demo-2-api --replicas 8

kubectl get -f deploy/go-demo-2.yml

minikube delete