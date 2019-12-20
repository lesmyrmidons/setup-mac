# setup-mac
My Mac (Mojave and more) Set Up

The following is the automated installation/set-up for my MacOS (Mojave and more) computer after updating or resetting it.
It does install all the apps i use daily, like JetBrains, Docker, Postaman and so on.
It does also set the configuration for my zsh and dotfile plugins (git configuration, zsh aliases, fonts ...etc) and soon it will also set my new Vim configuration.
Everything is based on Homebrew package manager.

## Requirements
* Homebrew
* Ansible

## Commands

Run the following command to install dependencies and run the ansible playbook.
```
$ ./setup.sh -i
```

Ansible command
```
$ ansible-playbook -i inventory localhost.yml -K
```

## Ansible tag usage
### Tags list
* brew      Install application by brew
* cask      Install application by brew cask
* dotfile   My dotfile
* zsh       Configuration zsh
* mas       Install applications by App Store 
* nvm       Install nvm for environment NodeJS

### Ansible commands
```
$ ansible-playbook -i inventory localhost.yml -K --tags "brew,cask"
$ ansible-playbook -i inventory localhost.yml -K --tags zsh
```
