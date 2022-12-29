#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN='${{ secrets.TOKEN }}'
git clone https://$TOKEN@https://github.com/infotechia/Huawei-Patika-CloudPracticum-FinalTask
cd /home/ubuntu/Huawei-Patika-CloudPracticum-FinalTask
apt install python3-pip -y
apt-get install python3.7-dev default-libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/Huawei-Patika-CloudPracticum-FinalTask/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80
