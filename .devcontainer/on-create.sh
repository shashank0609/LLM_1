sudo apt-get update

sudo apt-get install g++ unixodbc-dev -y
pip install --user pyodbc

#configure python
/usr/local/bin/python -m pip install --upgrade pip
/usr/local/bin/python -m pip install -m ipykernel install --user
# /usr/local/bin/python -m pip install -r requirements.txt

#configure git
GIT_CONFIG_PATH=$(pwd)/.gitconfig
git config --local include.path $GIT_CONFIG_PATH

#firewall add Codespace IP Address
echo -e "export HOST_PUBLIC_IP_ADDRESS=\"$(curl ifconfig.me)\"" | sudo tee -a ~/.bashrc
