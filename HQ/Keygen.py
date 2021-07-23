from cryptography.fernet import Fernet

def generate_key():

    key = Fernet.generate_key()
    with open("secret.key", "wb") as key_file:
        key_file.write(key)

def encrypt_message(message):
    generate_key()
    key = open("secret.key", "rb").read()
    encoded_message = message.encode()
    f = Fernet(key)
    encrypted_message = f.encrypt(encoded_message)

    print(encrypted_message)

encrypt_message("100")