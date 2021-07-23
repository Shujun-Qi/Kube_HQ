export LC_ALL=C.UTF-8
export LANG=C.UTF-8
sudo apt-get update
sudo apt-get install python3.6 -y
python3 -V
sudo apt-get install python3-venv -y
sudo apt-get install python-pip -y
cd ~
python3 -m venv venv
. venv/bin/activate
pip install Flask
python -m flask --version
export FLASK_APP=Storage
# export FLASK_ENV=development
flask run --host=0.0.0.0 --port=5000