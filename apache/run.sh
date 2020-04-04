#!/bin/bash


( rpm -q git ) || yum install git -y 

git clone https://github.com/abirami-mallikarjuna/devops.git

ansible-pull -i localhost -U https://github.com/abirami-mallikarjuna/devops.git apache/docker.yml
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

cd devops/apache

docker-compose build --no-cache
sleep 20
docker-compose up -d 
