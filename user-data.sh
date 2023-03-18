#!/bin/bash

LOG=/opt/user-data-$$.log
ansible-pull -i localhost -U https://github.com/udayayeswar/Ansible-dev.git main.yml -e 'ROLE=backend'  -c ansible.cfg -d /tmp/ansible &>>$LOG
ansible-pull -i localhost -U https://github.com/udayayeswar/Ansible-dev.git main.yml -e 'ROLE=frontend'  -c ansible.cfg -d /tmp/ansible &>>$LOG