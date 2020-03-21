# Tasks

* setup ansible
* configuring the nodes
* developing the roles and playbook..yaml
* concepts of adding a server and deploying a code to the production
* idempotency
* development

Reference Links: `https://www.tecmint.com/install-ansible-on-centos-rhel-8/`


## Commands to test ping

$ ansible -i /etc/ansible/hosts web -m ping  
success
$ anisble -m ping all
success
success

* setup ansible

1. ssh to the ansible master node
2. run the script given setup.sh
3. Enable the password less authentication
4. sudo vi /etc/sudoers --> new-user        ALL=(ALL)       NOPASSWD: ALL
5. Enable sudo permissions to new user sudo vi /etc/ssh/sshd_config  --> passwordauthentication yes
6. create a passwd for the new-user ---> passwd new-user
7. ssh to ansible master machine with new-user
8. Generate the keygen --> ssh-keygen
9. copy the pubkeys to node --->  ssh-copy-id new-user@nodeipaddress
10. Try to do ssh new-user@privateipaddressofyourinstance
11. you shoud be good.


## creation a roles

We will create roles to simplify the tasks and for the reusable purpose

$ansible-galaxy init role-name
it will initialize the folder structure for the role

### commands to test the playbook

$ ansible-playbook playbook.yaml --check
for to check the tasks execution (make sure the path fo the playbook.yaml valid)

$ ansible-playbook playbook1.yaml
for execution