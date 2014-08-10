#!/bin/bash

# primitive software
#sudo apt-get install -y vim openssh-server make

# for redmine
sudo apt-get install -y mysql-server-5.5 ruby1.9.3 libmysqld-dev
sudo gem install bundler
sudo gem install json -v 1.8.1
sudo gem install mysql2 -v 0.3.16

wget http://www.redmine.org/releases/redmine-2.5.1.tar.gz
tar zxvf redmine-2.5.1.tar.gz
sudo mv redmine-2.5.1 /opt

cd /opt/redmine-2.5.1
bundle install --without development test postgresql sqlite rmagick

# < setting mysql
cp config/database.yml.example config/database.yml

rake generate_secret_token
RAILS_ENV=production rake db:migrate

mkdir tmp public/plugin_assets
sudo chown -R www-data:www-data files log tmp public/plugin_assets
sudo chmod -R 755 files log tmp public/plugin_assets


# install apache
sudo apt-get install -y apache2 libapache2-mod-passenger libapache2-mod-svn

#< settings 
#<< /etc/apache2/apache2.conf
#<< /etc/apache2/sites-available/000-default.conf

sudo ln -s /opt/redmine/public/ /var/www/redmine

#< migration redmine


#< migration svn
