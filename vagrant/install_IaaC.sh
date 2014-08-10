#!/bin/bash

apt_pkgs='
virtualbox
'

sudo apt-get install -y ${apt_pkgs}

## install vagrant
vagrant_deb='vagrant_1.6.3_x86_64.deb'
if [ ! -e ${vagrant_deb} ]; then
  wget https://dl.bintray.com/mitchellh/vagrant/${vagrant_deb}
fi

sudo dpkg -i ${vagrant_deb}

## add box
vagrant box add ubuntu_server_14.04 https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box
