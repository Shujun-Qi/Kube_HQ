import os

from flask import Flask
from flask import request

app = Flask(__name__)

@app.route('/')
def Storage_Server():
    user = request.args.get('userid', default = -1, type = str)
    if user=="LKubeHQ":
        return "This is the sensitive data!\n"
    else:
        
        return "No Permission\n"
    