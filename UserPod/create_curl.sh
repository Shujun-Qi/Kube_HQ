curl -k --cert ./client.crt.pem --cert-type PEM --key ./client.key.pem --key-type PEM --pass drogonkaight -X POST -H 'Accept: application/json' \
-H 'Content-Type: application/json' \
http://localhost:8080/api/v1/namespaces/default/pods -d@nginx-pod.json