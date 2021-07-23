import os
from cryptography.fernet import Fernet
import requests

from flask import Flask
from flask import request

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def HQ():
    url = request.form.get('url', default = "0.0.0.0", type = str)
    user = request.form.get('userid', default = "-1", type = str)
    secret = request.form.get('secret', default = "none", type = str)
    key = open("secret.key", "rb").read()
    f = Fernet(key)
    secret_message = secret.encode()
    decrypted_message = f.decrypt(secret_message)
    name = decrypted_message.decode()
    # print(user)
    # print(url)
    # print(secret)

    if user != name:
        return "False\n"
    if url == "0.0.0.0":
        return "False\n"
    if secret == "none":
        return "False\n"
    else:
        url = "http://"+ url + "?userid=LKubeHQ"
        res = requests.get(url)
        filepath = "/nfs/user" + user
        # os.mkdir(filepath)
        filepath += "/data.txt"
        f = open(filepath, "w")
        f.write(res.text)
        f.close()
        return "True"
    