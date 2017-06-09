#!/bin/bash

DISTRO=$(uname -r | tail -c 5)

if [[ $DISTRO = 'ARCH' ]]; then
    pacman -S --noconfirm git python 

    git clone https://github.com/sw00/lappy.git /tmp/lappy

    cd /tmp/lappy && \
	ansible-playbook -vv site.yml
fi
