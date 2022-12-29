# Setup GitHub CLI
# https://lindevs.com/install-github-cli-on-raspberry-pi
GITHUB_CLI_VERSION=$(curl -s "https://api.github.com/repos/cli/cli/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
cd ~
curl -Lo gh.deb "https://github.com/cli/cli/releases/latest/download/gh_${GITHUB_CLI_VERSION}_linux_armv6.deb"
sudo dpkg -i gh.deb
rm -rf gh.deb

# Install VIM
sudo apt install vim

# Install VIM configuration
# https://github.com/amix/vimrc
sudo git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Remove Message of the Day
sudo rm /etc/motd

# install GNU Screen
sudo apt-get install screen --yes

# Install htop
sudo apt install htop --yes

# Install fd (find)
sudo apt install fd-find

# Set git user information
git config --global user.name "ehartemink"
git config --global user.email "edwardhartemink@gmail.com"

# Install IPython module for Python
python3 -m pip install IPython
