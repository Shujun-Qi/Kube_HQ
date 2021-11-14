curl -k --cert ./user.crt.pem --cert-type PEM --key ./user.key.pem --key-type PEM --pass drogonkaight -X POST -H 'Accept: application/json' \
-H 'Content-Type: application/json' \
-d '
    {
        "apiVersion": "v1",
        "kind": "Pod",
        "metadata": {
            "name": "nginx1"
        },
        "spec": {
            "containers": [
                {
                    "name": "nginx",
                    "image": "nginx:1.7.9",
                    "ports": [
                        {
                            "containerPort": 80
                        }
                    ]
                }
            ]
        }
    }
' http://128.110.217.92:8081/api/v1/namespaces/default/pods 