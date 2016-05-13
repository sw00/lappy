#!/bin/bash
# install xcode command line tools (required for homebrew)
xcode-select --install

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install ansible via homebrew
brew install ansible && brew link ansible

# provision machine with ansible
ansible-playbook -vv site.yml
