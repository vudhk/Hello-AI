echo "===== update and install some required packages ====="
sudo apt update -y
sudo apt install -y python3-dev python3-pip
sudo pip3 install jupyter

echo "===== install tensorflow ====="
pip3 install --upgrade tensorflow

echo "===== install opencv ====="
sudo apt install -y python-opencv