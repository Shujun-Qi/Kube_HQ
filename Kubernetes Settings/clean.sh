kubectl delete deployments sleep
kubectl delete deployments kubehq
kubectl delete secrets admission-webhook-example-certs
kubectl delete validatingwebhookconfiguration validation-webhook-example-cfg
kubectl delete service kubehq-svc
kubectl label namespace default webhook-
rm ../Webhook/deployment/validatingwebhook-ca-bundle.yaml