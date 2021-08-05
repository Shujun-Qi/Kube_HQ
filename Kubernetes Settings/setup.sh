sudo cp ca.crt /etc/kubernetes/pki/ca.crt
sudo systemctl daemon-reload
sudo systemctl restart kubelet

sudo ../Webhook/deployment/webhook-create-signed-cert.sh
sudo kubectl get secret admission-webhook-example-certs
kubectl create -f ../Webhook/deployment/deployment.yaml
kubectl create -f ../Webhook/deployment/service.yaml
cat ../Webhook/deployment/validatingwebhook.yaml | ../Webhook/deployment/webhook-patch-ca-bundle.sh > ../Webhook/deployment/validatingwebhook-ca-bundle.yaml
# kubectl label namespace default addmission-webhook-example=enabled
kubectl create -f ../Webhook/deployment/validatingwebhook-ca-bundle.yaml