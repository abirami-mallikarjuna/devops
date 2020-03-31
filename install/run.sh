for i in git ansible 
do
( rpm -q $i ) || yum install $i -y 
done
ansible-pull -i localhost -U https://github.com/abirami-mallikarjuna/devops.git install/docker.yml 

