mkdir -p gitlab
mkdir -p gitlab/var-log-gitlab
mkdir -p gitlab/etc-gitlab
docker-compose -f app.yml up -d
. ./.env
docker exec -it gitlab-runner gitlab-runner unregister --all-runners
docker exec -it gitlab-runner gitlab-runner register --non-interactive --url http://gitlab-ce --registration-token ${REGISTRATION_TOKEN} --executor docker --docker-image ansible/ansible:ubuntu1604 --description docker-runner --tag-list docker --run-untagged=true --locked=false