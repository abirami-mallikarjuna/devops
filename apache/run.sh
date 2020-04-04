#!/bin/bash


( rpm -q git ) || yum install git -y 

git clone https://github.com/abirami-mallikarjuna/devops.git

ansible-pull -i localhost -U https://github.com/abirami-mallikarjuna/devops.git apache/docker.yml
ansible-pull -i localhost -U https://github.com/abirami-mallikarjuna/devops.git apache/installdc.yml

cd devops/apache

docker-compose build --no-cache
sleep 60
docker-compose up -d 
