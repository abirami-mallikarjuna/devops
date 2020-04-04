#!/bin/bash


( rpm -q git ) || yum install git -y 

git clone https://github.com/abirami-mallikarjuna/devops.git


cd devops/apache

docker-compose build --no-cache
sleep 60
docker-compose up -d 
