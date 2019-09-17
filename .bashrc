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
alias gcp='git cherry-pick'

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

# HUGO
alias hug='hugo server -D --navigateToChanged'

# JEKYLL
alias js='bundle exec jekyll serve --watch --port 4242'

# ImageMagick: PDF to PNG
pdftopng() {
  if [ $# -eq 0 ];
  then
    echo "usage: pdftopng IN.pdf OUT.png density[120] quality[95] shave_x[100] shave_y[100]"
  else
    convert -density ${3:-120} -quality ${4:-95} -background white -alpha remove -shave ${5:-100}x${6:-100} "$1" -append "$2"
  fi
}

# Compress PDF
compresspdf() {
    echo 'Usage: compresspdf [input file] [output file] [screen|ebook|printer|prepress]'
    gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/${3:-"screen"} -dCompatibilityLevel=1.4 -sOutputFile="$2" "$1"
}

# Syntax highlight clipboard
shl() {
  pbpaste | \
    highlight \
    	--font Inconsolata \
    	--font-size $1 \
    	--src-lang $2 \
    	--out-format rtf | \
    pbcopy
}

# ETC
alias halp='cat ~/.bashrc'
alias bashreload='source ~/.bashrc'

# Cute network utils
alias checkdns_eth="networksetup -getdnsservers ethernet"
alias checkdns_wifi="networksetup -getdnsservers Wi-Fi"y
alias flushdns="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"

eval "$(rbenv init -)"
PATH="~/bin:/usr/local/sbin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

source $HOME/.bash_theme
