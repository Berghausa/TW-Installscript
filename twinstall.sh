#!/bin/sh
apt update && apt upgrade -y
apt install python3 -y && apt install pip -y && apt install git -y && apt install screen -y 
git clone https://github.com/stefan2200/TWB.git
cd TWB/
pip install -r requirements.txt --break-system-packages
