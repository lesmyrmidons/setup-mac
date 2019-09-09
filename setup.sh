#!/usr/bin/env bash

usage_exit() {
    echo "Usage: $( basename $0) [-h] [-f]" 1>&2
    echo
    echo "Options:"
    echo "  -h  show this help"
    echo "  -i  run automaticaly ansible playbook 'ansible-playbook -i inventory localhost.yml -K'"
    exit 1
}

install=false
while getopts :hi OPT
do
    case $OPT in
        h)  usage_exit
            ;;
        i)  install=true
            ;;
        \?) usage_exit
            ;;
    esac
done

which -s brew
if [[ $? != 0 ]] ; then
    echo "Install brew\n"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

which -s ansible
if [[ $? != 0 ]] ; then
    echo "Install ansible"
    brew install ansible
else
    echo "Update ansible"
    brew upgrade ansible
fi

if $install; then
    ansible-playbook -i inventory localhost.yml -K
fi

brew doctor