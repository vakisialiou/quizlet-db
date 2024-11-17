# cd .ssh
# ssh-keygen
# cd /srv || return
# git clone git@github.com:Manganumapp/manganum-api.git
# cd manganum-api/
# git checkout dev or git checkout master
# ./provision.sh

sudo apt-get update

apt install mysql-client-core-8.0

apt install docker.io

DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.16.0/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

docker --version
docker compose version

echo "1. Create server env file: 'vim ./.env'"
echo "2. Create mysql config file: 'vim ./my.cnf'"