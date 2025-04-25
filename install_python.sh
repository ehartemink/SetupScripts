# 100% credit goes to https://stackoverflow.com/questions/76942052/raspberry-pi-cant-install-python-3-11
# Replace with latest

wget https://www.python.org/ftp/python/3.13.1/Python-3.13.1.tgz

# install the build tools and git.
sudo apt update && sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev git

# Configure, make and install
tar -xzvf Python-3.13.1.tgz
cd Python-3.13.1/
./configure --enable-optimizations
sudo make altinstall

# Link your new Python
sudo rm /usr/bin/python
sudo ln -s /usr/local/bin/python3.13 /usr/bin/python
