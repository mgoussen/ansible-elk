Install elasticsearch playbook :
ansible-galaxy install elastic.elasticsearch,6.6.0

Git :
https://github.com/elastic/ansible-elasticsearch


Run deployments :
ansible-playbook -i environments/elk elasticsearch.yml -u elk
