kubectl get pods | grep kibana | cut -d ' ' -f1 | xargs kubectl delete pods
kubectl get serviceaccount | grep kibana | cut -d ' ' -f1 | xargs kubectl delete serviceaccount
kubectl get configmap | grep kibana | cut -d ' ' -f1 | xargs kubectl delete configmap
kubectl get roles | grep kibana | cut -d ' ' -f1 | xargs kubectl delete roles
kubectl get rolebindings.rbac.authorization.k8s.io | grep kibana | cut -d ' ' -f1 | xargs kubectl delete rolebindings.rbac.authorization.k8s.io
kubectl get jobs | grep kibana | cut -d ' ' -f1 | xargs kubectl delete jobs
kubectl get secrets | grep kibana | cut -d ' ' -f1 | xargs kubectl delete secrets
