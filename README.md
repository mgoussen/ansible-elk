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
ansible-galaxy install elastic.elasticsearch,7.1.1

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


# Install Hashicorp Vault :

install vault on your ci :
https://www.vaultproject.io/docs/install/
pip install hvac
pip install "hvac[parser]"

if it doesn't work, it's because ansible host is own python :
/usr/local/Cellar/ansible/2.8.1/libexec/bin/pip install hvac
/usr/local/Cellar/ansible/2.8.1/libexec/bin/pip install "hvac[parser]"

export VAULT_ROOT_TOKEN_ID="myroot"
export VAULT_PORT='8200'
export VAULT_IP='127.0.0.1'

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export VAULT_PROTOCOL='http'
export VAULT_ADDR_PORT=$VAULT_IP':'$VAULT_PORT
export VAULT_ADDR=$VAULT_PROTOCOL'://'$VAULT_ADDR_PORT
export VAULT_API_ADDR=$VAULT_ADDR

docker run --name vault-server --cap-add=IPC_LOCK -p $VAULT_PORT:$VAULT_PORT -e 'VAULT_DEV_ROOT_TOKEN_ID='$VAULT_ROOT_TOKEN_ID -e 'VAULT_DEV_LISTEN_ADDRESS=' vault
vault login $VAULT_ROOT_TOKEN_ID
vault secrets enable -path=secret4elk kv 
vault kv put secret4elk/elk elastic_major_version=7.x elastic_version=7.1.0 ansible_user=elk ansible_ssh_pass=elk ansible_sudo_pass=elk

