#!/bin/bash
for i in docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine 
do 
( rpm -q $i ) || yum remove $i -y 
done

