#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www/html ]; then
  rm -rf /var/www/html
  ln -fs /vagrant /var/www/html
fi
apt-get install git-all

# install NodeJS and NPM
if [ -f ~/Downloads/node-v4.3.0-linux-x64.tar.xz ];
then
   echo "Node binaries already downloaded"
else
   echo "Need to download Node binaries"
   wget -nv -P ~/Downloads/ https://nodejs.org/dist/v4.3.0/node-v4.3.0-linux-x64.tar.xz
   tar --strip-components 1 -xf ~/Downloads/node-v4.3.0-linux-x64.tar.xz -C /usr/local
fi

#verify NodeJS and NPM
node -v
npm -v
# install Gulp globally
npm install -g gulp-cli
# install bower globally
npm install -g bower

cp /livekit/.bashrc /home/vagrant/.bashrc
