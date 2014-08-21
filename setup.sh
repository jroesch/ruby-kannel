#!/bin/bash
# A simple Bash script that captures all the set up needed to get Kannel running
# Ideally this will be folded into a Chef recipe when we start building a service on top.

# Update Apt
sudo apt-get update

# Basic Dependencies
sudo apt-get -yf install build-essential git libssl-dev libxml2 libxml2-dev curl bison minicom

# Setup Kannel
curl http://www.kannel.org/download/1.4.4/gateway-1.4.4.tar.gz > gateway-1.4.4.tar.gz
tar -xzf gateway-1.4.4.tar.gz
cd gateway-1.4.4.tar.gz
./configure --disable-docs
touch .depend
make depend
make
sudo make install

# Setup Ruby
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
rbenv install 2.1.2
rbenv global 2.1.2
rbenv rehash
gem install bundler
rbenv rehash
bundle install
