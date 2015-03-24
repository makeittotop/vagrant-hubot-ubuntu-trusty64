#!/usr/bin/env bash

apt-get -y update

dpkg -s npm &> /dev/null || {
  apt-get -y install nodejs npm
  ln -sf /usr/bin/nodejs /usr/bin/node
}

command -v yo &> /dev/null || {
  npm install -g yo generator-hubot # hubot coffee-script
}

stat /vagrant/myhubot &> /dev/null || {
    mkdir /vagrant/myhubot;
}

# Install hubot under the vagrant user as under root it was err'ing out
su - vagrant -c "cd /vagrant/myhubot && yo hubot --owner="makeittotop@gmail.com" --name="hubot" --defaults"
#cd /vagrant/myhubot && yo hubot --owner="makeittotop@gmail.com" --name="hubot" --defaults


#if [ ! -d "myhubot" ]; then
#  mkdir myhubot
#fi


