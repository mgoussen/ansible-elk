Install elasticsearch playbook :
ansible-galaxy install elastic.elasticsearch,6.6.0

Git :
https://github.com/elastic/ansible-elasticsearch


Run deployments :
ansible-playbook -i environments/elk elk.yml -u elk

######################################################
##                     Important                    ##
######################################################
All VMs must have installed :
    - openssh-server
    - python2.7
    - python-pip

Otherwise Ansible will not be able to run.