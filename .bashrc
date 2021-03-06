#!/usr/bin/env bash
export LANGUAGE='en_US.UTF-8' && export LC_ALL='en_US.UTF-8'
unset MAILCHECK

if [[ -n $INSIDE_EMACS && $(uname) == 'Darwin' ]]; then
    stty ek
fi

# NAV
alias ls='ls -G'
alias la="ls -la"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cls='clear'
alias o='open .'

# GIT
alias gs='git status'
alias ga='git add .'
alias gadd='git add'
alias gcm='git commit -v -m'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gdiff='git diff'
alias gpmas='git push origin master'
alias gpr='git pull --rebase'
alias gprr='for d in ./*/ ; do (cd "$d" && echo " " && echo "$d: " && git pull --rebase); done'
alias gitapushr='for d in ./*/ ; do (cd "$d" && echo " " && echo "$d: " && gitapush dirty); done'

# GIT Functions
gitapush() {
  if [ $# -eq 0 ];
  then
    echo "Enter message: "
    read message
  else
    message=$1
  fi

  if [ -z "$message" ];
  then
    message=$(date +%d-%b-%H:%M)
  fi

  git add .
  git commit -m "$message"
  git push origin master
}

# ETC
alias halp='cat ~/.bashrc'
alias bashreload='source ~/.bashrc'

# Cute network utils
alias checkdns_eth="networksetup -getdnsservers ethernet"
alias checkdns_wifi="networksetup -getdnsservers Wi-Fi"
alias flushdns="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"

# Ruby stuff
eval "$(rbenv init -)"
PATH="~/bin:/usr/local/sbin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"

PATH="${HOME}/.cargo/bin:${PATH}"
export PATH

export GOPATH=$HOME/code/go

source $HOME/.bash_theme
