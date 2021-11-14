curl -k --cert ./client.crt.pem --cert-type PEM --key ./client.key.pem --key-type PEM --pass drogonkaight -X POST -H 'Content-Type: application/yaml' \
--data '
apiVersion: v1
kind: Pod
metadata:
  name: nginx1
spec:
  containers:
  - name: nginx
    image: nginx:1.7.9
    ports:
    - containerPort: 80
' "https://127.0.0.1:6443/api/v1/namespaces/default/pods"