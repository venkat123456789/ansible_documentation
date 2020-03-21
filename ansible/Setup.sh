# install and configure Ansible in Redhat 8

sudo dnf update;
sudo dnf install python3;
python3 -V;
sudo dnf install python3-pip;
useradd ansible;


#passwd ansible
#set the root password for the ansible user
#Please give ansible user full root access
#vi /etc/sudoers
#anisble ALL=(ALL) NOPASSWD: ALL
#Please enable the passwordauthentication yes from /etc/ssh/shhd_config

#install ansible by running the command
pip3 install ansible --user;
anisble --version;
sudo mkdir /etc/ansible;
cd /etc/ansible;
sudo touch hosts;
#Add the ipaddress in the hosts file 
#example: [web]
#           192.0.0.1
#Genenrate a keys for the ansible user
#use ssh-copy-d to copy the public keys to the node
#In aws case we can use the private ip while copying the keys
#check the ssh connection between the ansibe server and the node 

#command to test the connection from the ansible server (web- name of the list of servers)
