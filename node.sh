#!/bin/bash
sudo apt-get install -y build-essential
sudo apt-get install -y git-core curl

cd /home/vagrant
curl https://raw.githubusercontent.com/creationix/nvm/v0.23.3/install.sh | bash
echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
source /home/vagrant/.profile

nvm install v0.10.41
nvm alias default v0.10.41
nvm install lts/boron

nvm use default
cd /vagrant/web
npm install -g nodemon
npm install
npm run setup
