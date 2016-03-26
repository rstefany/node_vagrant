#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y g++
sudo apt-get install -y nodejs npm

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

npm install gulp