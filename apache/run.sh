#!/bin/bash
docker-compose build --no-cache
sleep 60
docker-compose up -d 
