#!/bin/bash

DISTRO=$(uname -r | tail -c 5)

if [[ $DISTRO = 'ARCH' ]]; then
    if [ $EUID != 0 ]; then
	sudo pacman -Sy --noconfirm git ansible 
    fi

    git clone \
	--recurse-submodules \
	--shallow-submodules \
	https://github.com/sw00/lappy.git /tmp/lappy

    export ANSIBLE_NOCOWS=1
    export ANSIBLE_LIBRARY=/tmp/lappy/library
    cd /tmp/lappy && \
	ansible-playbook -vv site.yml
fi
