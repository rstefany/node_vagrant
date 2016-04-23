#!/usr/bin/env bash

sudo su
apt-get update
apt-get upgrade
apt-get install -y g++
apt-get install -y node npm
npm cache clean -f
npm install -g n
n stable

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

cd /var/www

npm install --global gulp-cli
npm -y init
npm install --save-dev --no-bin-links gulp

npm install --no-bin-links bower mean-cli