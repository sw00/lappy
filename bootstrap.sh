#!/bin/bash
OS=$(uname -s)

if [[ $OS = 'Darwin' ]]; then
    curl -sSL https://raw.githubusercontent.com/sw00/lappy/master/scripts/osx.sh | sh
elif [[ $OS = 'Linux' ]]; then

    curl -sSL https://raw.githubusercontent.com/sw00/lappy/master/scripts/linux.sh | sh
fi

