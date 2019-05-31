# Install elasticsearch playbook :
ansible-galaxy install elastic.elasticsearch,6.6.0

Git :
https://github.com/elastic/ansible-elasticsearch

# Tutorials Installation kibana needed to create ansible role
https://www.elastic.co/guide/en/kibana/current/deb.html
https://www.elastic.co/guide/en/kibana/current/rpm.html

# Tutorial Installation logstash needed to create ansible role
https://www.elastic.co/guide/en/logstash/current/installing-logstash.html

Run deployments :
ansible-playbook -i environments/elk elk.yml -u elk
ansible-playbook -i environments/elk jhipster.yml -u elk

######################################################
##                     Important                    ##
######################################################
All VMs must have installed :
    - openssh-server
    - python2.7
    - python-pip

Otherwise Ansible will not be able to run.

######################################################
##                    FOR EACH VM                   ##
######################################################
ssh [VM_USER]@[VM_IP]
sudo apt-get install openssh-server python2.7 python-pip
mkdir -p ~/.ssh && touch ~/.ssh/authorized_keys
chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys
exit
scp ~/.ssh/id_rsa.pub [VM_USER]@[VM_IP]:~/.ssh/authorized_keys

######################################################
##                  Test If running                 ##
######################################################
Elasticsearch node master
http://[URL_NODE_MASTER]:9200/

Kibana
http://[URL_KIBANA]:5601
