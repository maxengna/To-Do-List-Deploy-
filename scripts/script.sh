kubectl apply -f  k8s/apps
kubectl apply -f  k8s/argocd
kubectl apply -f  k8s/observability
# observability stack (prometheus, loki, promtail, tempo, grafana) จะถูก deploy ผ่าน ArgoCD Application ใน k8s/argocd/


# call argocd to sync the application
# sh .\scripts\deploy.sh