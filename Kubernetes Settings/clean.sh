kubectl delete deployments sleep
kubectl delete deployments admission-webhook-example-deployment
kubectl delete secrets admission-webhook-example-certs
kubectl delete validatingwebhookconfiguration validation-webhook-example-cfg
kubectl delete service admission-webhook-example-svc
kubectl label namespace default webhook-
rm ../Webhook/deployment/validatingwebhook-ca-bundle.yaml