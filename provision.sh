#!/usr/bin/env bash

apt-get -y update

dpkg -s npm &> /dev/null || {
  apt-get -y install nodejs npm
  ln -sf /usr/bin/nodejs /usr/bin/node
}

command -v yo &> /dev/null || {
  npm install -g yo generator-hubot
}

