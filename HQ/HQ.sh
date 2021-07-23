export LC_ALL=C.UTF-8
export LANG=C.UTF-8
apt-get update
apt-get install python3.6 -y
python3 -V
apt-get install python3-venv -y
mkdir /nfs/user100
cd /root/HQ
python3 -m venv venv
source venv/bin/activate
pip install Flask
pip install cryptography
pip install requests
python -m flask --version
export FLASK_APP=HQ
# export FLASK_ENV=development
flask run --host=0.0.0.0 --port=5000