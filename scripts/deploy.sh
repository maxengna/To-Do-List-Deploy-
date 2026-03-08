kubectl apply -f  k8s/apps
kubectl apply -f  k8s/argocd
kubectl apply -f  k8s/observability


# call argocd to sync the application
# sh .\scripts\deploy.sh