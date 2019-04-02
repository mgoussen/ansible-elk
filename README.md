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
##                  Test If running                 ##
######################################################
Elasticsearch node master
http://[URL_NODE_MASTER]:9200/

Kibana
http://[URL_KIBANA]:5601