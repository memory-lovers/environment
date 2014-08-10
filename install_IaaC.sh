#!/bin/bash

## install vagrant
vagrant_deb='vagrant_1.6.3_x86_64.deb'
wget https://dl.bintray.com/mitchellh/vagrant/${vagrant_deb}
dpkg -i ${vagrant_deb}


