#!/bin/bash
sudo yum install git -y
sudo yum install python3 -y
sudo yum install python3-pip -y
cd /home 
sudo git clone https://github.com/Chakry-27/USA-Housing.git
cd /home/USA-Housing/
pip3 install -r requirements.txt
screen -m -d python3 app.py
