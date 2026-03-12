kubectl create ns argocd || echo "Namespace argocd already exists"
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml || echo "ArgoCD already installed"
minikube service argocd-server -n argocd || echo "ArgoCD service already exists"
# wait for 10 seconds
# sleep 10
# kubectl port-forward -n argocd svc/argocd-server 8083:443 || echo "ArgoCD port-forward already exists"
# sleep 10
# kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
 

# quick tunnel argocd in cloudflare
# cloudflare tunnel --url http://localhost:8083 --no-tls-verify
