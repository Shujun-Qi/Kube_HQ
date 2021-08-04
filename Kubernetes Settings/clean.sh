kubectl delete deployments sleep
kubectl delete deployments admission-webhook-example-deployment
kubectl delete secrets admission-webhook-example-certs
kubectl delete validatingwebhookconfiguration validation-webhook-example-cfg
rm ../Webhook/deployment/validatingwebhook-ca-bundle.yaml