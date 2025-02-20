#!/bin/sh
apt update && apt upgrade -y
apt install python3 -y && apt install pip -y && apt install git -y && apt install screen -y 
wget https://www.python.org/ftp/python/3.9.7/Python-3.9.7.tgz
tar xzf Python-3.9.7.tgz
cd Python-3.9.7
./configure --enable-optimizations
make altinstall
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519
echo"-------------------------------------------"
cat ~/.ssh/id_ed25519.pub
echo"-------------------------------------------"
echo"Diesen code Berghausa geben zum freischalten für die repo, wenn eingefügt dann erst fortsetzen"
echo"-------------------------------------------"
read -p "Warte auf eingabe..."
ssh -T git@github.com
git clone git@github.com:Berghausa/TWB-New.git
cd TWB-new/
python3.9 -m pip install -r requirements.txt --break-system-packages
