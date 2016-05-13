#lappy

Bootstrapping my workstation with the power of [Ansible](https://www.ansible.com/).

## Gettins Started
On a factory fresh OSX machine, <s>simply execute `bootstrap.sh`</s> 
run `curl -sSL https://raw.githubusercontent.com/sw00/lappy/bootstrap.sh | sh`.

## What it does (so far)

1. Installs Xcode Command Line Tools (required by homebrew).

2. Installs [homebrew](http://brew.sh/) (**WARNING: via curl + sh - for now**)

3. Executes the Ansible playbook on the local machine.
