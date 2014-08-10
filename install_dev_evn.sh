#!/bin/bash

## install primitive pkgs
pkgs='
vim
openssh-server
git
language-pack-ja
language-pack-ja-base
subversion
screen
'
sudo apt-get install -y ${pkgs}

## for language ja
rm -rf Documents/ examples.desktop Music/ Pictures/ Public/ Templates/ Videos/
update-locale LANG=ja_JP.UTF-8 LANGUAGE="jp_JP:ja"
sudo update-locale LANG=ja_JP.UTF-8 LANGUAGE="jp_JP:ja"
souce /etc/default/locale
source /etc/default/locale
echo $LANG

