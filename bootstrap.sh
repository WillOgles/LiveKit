#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www/html ]; then
  rm -rf /var/www/html
  ln -fs /vagrant /var/www/html
fi
apt-get install git-all
# install NodeJS and NPM
wget -nv -P ~/Downloads/ https://nodejs.org/dist/v4.3.0/node-v4.3.0-linux-x64.tar.xz
tar --strip-components 1 -xf ~/Downloads/node-v4.3.0-linux-x64.tar.xz -C /usr/local
#verify NodeJS and NPM
node -v
npm -v
# install Gulp globally
npm install --global gulp-cli

cp /vagrant/.bashrc /home/vagrant/.bashrc
