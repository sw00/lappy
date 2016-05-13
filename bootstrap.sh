#!/bin/bash
# install xcode command line tools (required for homebrew)
xcode-select --install

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install git and ansible via homebrew
brew install git ansible && brew link git ansible

# check out this repo
git checkout https://github.com/sw00/lappy.git /tmp/lappy

# provision machine with ansible
cd /tmp/lappy && \
ansible-playbook -vv site.yml

