# Important
All VMs must have stuff installed :
<ol>
    <li>openssh-server</li>
    <li>python2.7</li>
    <li>python-pip</li>
</ol>

Otherwise Ansible will not be able to run. <br/>

This script can be run for each VM : <br/>

ssh [VM_USER]@[VM_IP] <br/>
sudo apt-get install openssh-server python2.7 python-pip <br/>
mkdir -p ~/.ssh && touch ~/.ssh/authorized_keys <br/>
chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys <br/>
exit <br/>
scp ~/.ssh/id_rsa.pub [VM_USER]@[VM_IP]:~/.ssh/authorized_keys <br/>


# Install elasticsearch playbook :
ansible-galaxy install git+https://github.com/elastic/ansible-elasticsearch.git,7f5be969e07173c5697432141e909b6ced5a2e94

Git : <br/>
https://github.com/elastic/ansible-elasticsearch

Run deployments : <br/>
ansible-playbook -i environments/elk elk.yml -u [YOUR_USER] --extra-vars "ansible_sudo_pass=[YOUR_PASSWORD]"
<br/>
ansible-playbook -i environments/elk jhipster.yml -u [YOUR_USER] --extra-vars "ansible_sudo_pass=[YOUR_PASSWORD]"






# Check if running
Elasticsearch node master : <br/>
http://[URL_NODE_MASTER]:9200/

Kibana : <br/>
http://[URL_KIBANA]:5601
