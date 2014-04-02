#!/bin/sh

#mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install mongodb-10gen

#setup db folders
sudo mkdir /data
sudo mkdir /data/db
sudo chown -R vagrant /data

#rails 3
gem install rails --version=3.2.16

#nokogiri
sudo apt-get install libxslt-dev libxml2-dev
sudo gem install nokogiri -v '1.5.11'

#make new dev engine
cd /vagrant
rails new engine --skip-active-record --skip-test-unit --skip-javascript --skip-bundle

echo "Modify gem file and run bundle install"
