#!/bin/bash

DISTRO=$(uname -r | tail -c 5)

if [[ $DISTRO = 'ARCH' ]]; then
    pacman -Sy --noconfirm git ansible 

    git clone \
	--recurse-submodules \
	--shallow-submodules \
	https://github.com/sw00/lappy.git /tmp/lappy

    export ANSIBLE_NOCOWS=1
    cd /tmp/lappy && \
	ansible-playbook -vv site.yml
fi
