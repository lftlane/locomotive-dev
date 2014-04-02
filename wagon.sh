#!/bin/sh

#install imagemagik
sudo apt-get install imagemagick -y
sudo ln -s /usr/bin/identify /usr/local/bin/identify

#install curl
sudo apt-get install curl -y

#RVM
\curl -L https://get.rvm.io | bash -s stable
source /home/vagrant/.rvm/scripts/rvm

#ruby 2.0
rvm install ruby-2.0.0

#bundler
gem install bundler

#rake
gem install rake

#wagon
gem install locomotivecms_wagon
wagon version

echo "Done..."

