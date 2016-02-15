# livekit

eCommerce Pattern Library

## Setup Instructions

1. [install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. [install Vagrant cli](https://www.vagrantup.com/downloads.html)
3. in terminal, install Vagrant Host Manager plugin: `$ vagrant plugin install vagrant-hostmanager`
4. clone repo locally into `~/<yourProjectsDirectory>/LiveKit`: `$ git clone https://<uname>@stash.crossview.com/scm/uxl/livekit.git ~/<yourProjectsDirectory>`
5. change directory in terminal into cloned repo
6. `$ vagrant up`
7. Access Pattern Lab at <http://livekit/patternlab/public/>

## Build CSS from Sass

1. `$ cd ~/<yourProjectsDirectory>/LiveKit`
2. `$ vagrant ssh`
3. `$ cd /livekit`
4. `$ gulp sass`

This will lint the sass files in `/livekit/styles/source` according to our rule and build the output css files in `/livekit/styles/public`.

## Rebuild Pattern Lab

This is necessary after altering templates in Pattern Lab.

1. `$ cd ~/<yourProjectsDirectory>/LiveKit`
2. `$ vagrant ssh`
3. `$ cd /livekit`
4. `$ gulp lab`

## Shutting down Vagrant Box

1. Exit ssh session by running `$ exit` command
2. run `$ vagrant destroy` and say yes to prompt

## Starting Vagrant Box

1. `$ cd ~/<yourProjectsDirectory>/LiveKit`
2. `$ vagrant up`
3. `$ vagrant ssh`
4. `$ cd /livekit`
