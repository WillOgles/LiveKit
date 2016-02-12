# livekit

eCommerce Pattern Library

## Setup Instructions

1.  install VirtualBox
2.  install Vagrant cli
3.  install Vagrant Host Manager `$ vagrant plugin install vagrant-hostmanager`
4.  clone repo
5.  change directory in terminal into cloned repo
6.  `$ vagrant up`
7.  `$ vagrant ssh`
8.  `$ cd /livekit`
9.  `$ npm --prefix patternlab install patternlab` patternlab node dependencies
10. `$ npm install` gulp build tools for our Sass
11. `$ bower install` to download third-party libraries
12. `$ gulp` to compile output css and build patternlab
13. Access Pattern Lab at <http://livekit/patternlab/public/>

## Build CSS from Sass

After ssh'ing into vagrent@livekit and changing into your
 working directory, `/livekit`, run `$ gulp sass`.

This will lint the sass files in `/livekit/styles/source`
 according to our rules build the output css files in `/livekit/styles/public`.

## Rebuild Pattern Lab

This is necessary after altering templates in Pattern Lab.

After ssh'ing into vagrent@livekit and changing into your
 working directory, `/livekit`, run `$ gulp lab`.
