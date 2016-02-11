#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

# install NodeJS and NPM
wget -P ~/Downloads/ https://nodejs.org/dist/v4.3.0/node-v4.3.0-linux-x64.tar.xz
tar --strip-components 1 -xf ~/Downloads/node-v4.3.0-linux-x64.tar.xz -C /usr/local
#verify NodeJS and NPM
node -v
npm -v
# install Gulp globally
npm install --global gulp-cli
