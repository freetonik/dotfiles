#!/usr/bin/env bash

export PATH="/usr/local/bin:$PATH"
export PATH=$PATH:"/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin"
export VAGRANT_HOME="/Volumes/MacHDD/freetonik/.vagrant.d/" # Store vagrant boxes on HDD
export LANGUAGE='en_US.UTF-8' && export LC_ALL='en_US.UTF-8'

unset MAILCHECK

EDITOR=vim
alias e='$EDITOR'
alias v="vim"

# NAV
alias ls='ls -G'
alias la="ls -la"
alias ll="ls -la"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'

# GIT
alias gs='git status'
alias ga='git add'
alias gall='git add .'
alias gcm='git commit -v -m'
alias gb='git branch'
alias gg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gdiff='git diff'
alias gp='git push'
alias gpr='git pull --rebase'

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias prj='cd /Volumes/MacHDD/freetonik/project/hexlet/'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source $HOME/.bash_theme
source $HOME/.bash_ssh_aliases
