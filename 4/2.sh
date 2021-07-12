# connect to bastion
adduser jack
su - jack

ssh-keygen -f bastion2node

touch ~/.ssh/config
chmod 700 ~/.ssh
chmod 600 ~/.ssh/config 

# Host node1
#       Hostname 172.31.7.119
#       User ubuntu
#       port 22
#       IdentityFile ~/.ssh/bastion2node1

ssh node1
