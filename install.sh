#!/bin/bash 

set -e
apt-get update 
apt-get install -y -qq ocaml libelf-dev
apt-get clean
npm install -g yarn

export PHANTOMJS_VERSION=2.1.1
# export PATH=$PWD/travis_phantomjs/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/bin:$PATH
rm -rf $PWD/travis_phantomjs; mkdir -p $PWD/travis_phantomjs
wget https://github.com/Medium/phantomjs/releases/download/v$PHANTOMJS_VERSION/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 -O $PWD/travis_phantomjs/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2
tar -xvf $PWD/travis_phantomjs/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 -C $PWD/travis_phantomjs
ln -s $PWD/travis_phantomjs/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/bin/phantomjs /usr/bin/phantomjs
phantomjs --version

rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

