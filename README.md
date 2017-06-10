# lappy

Bootstrapping my workstations with the power of
[Ansible](https://www.ansible.com/).

## Getting Started
On a factory fresh OSX or Arch Linux based machine run `curl
-sSL https://raw.githubusercontent.com/sw00/lappy/master/bootstrap.sh | sh`.

## What it does (so far)

`bootstrap.sh` will delegate to `linux.sh` or `osx.sh` to install git, ansible
and then run the playbooks locally.

