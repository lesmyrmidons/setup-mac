# setup-mac
Setup for Mac

## Requirement
* Homebrew
* Ansible

## Command

Run this comand for install dependencies and run ansible playbook.
```
$ ./setup.sh -i
```

Command ansible
```
$ ansible-playbook -i inventory localhost.yml -K
```

## Ansible tag using
### list of tags
* brew      Install application by brew
* cask      Install application by brew cask
* dotfile   My dotfile
* zsh       Configuration zsh
* mas       Install applications by App Store 
* nvm       Install nvm for environment NodeJS

### Command ansible
```
$ ansible-playbook -i inventory localhost.yml -K --tags {brew,cask}
$ ansible-playbook -i inventory localhost.yml -K --tags zsh
```
