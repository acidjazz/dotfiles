#!/bin/bash

function ajprompt() {

  if [ $? = "0" ]; then cmd=1; else cmd=0; fi

  local db="\[\033[1;34m\]"
  local lb="\[\033[1;34m\]"
  local dg="\[\033[0;32m\]"
  local lg="\[\033[1;32m\]"

  local dr="\[\033[0;31m\]"
  local lr="\[\033[1;31m\]"
  local dy="\[\033[0;33m\]"
  local ly="\[\033[1;33m\]"

  local lw="\[\033[0;37m\]"

  if [ "$PWD" == "$HOME" ]; then local pwd="~"; else local pwd=$PWD; fi
  if [ ${#pwd} -gt 20 ]; then local pwd="..${pwd:$((${#pwd}-20)):20}"; fi

  if [ $cmd == 1 ]
  then
    PS1="${db}[${lb}\u${lg}@${lb}\h${lg}(${dg}${pwd}${lg})${db}]${lw}: "
  else
    PS1="${dr}[${lr}\u${ly}@${lr}\h${ly}(${dy}${pwd}${ly})${dr}]${lw}: "
  fi

}

# PROMPT_COMMAND=ajprompt
ANDROID_SDK="/Users/k/android/sdk"
ANDROID_HOME="/Users/k/android/sdk"
ANDROID_BIN=${ANDROID_SDK}/platform-tools
PATH=/usr/local/git/bin:$PATH:${ANDROID_SDK}/platform-tools:/usr/local/git/bin:${ANDROID_SDK}/tools:~/.composer/vendor/bin
# PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"

export NODE_PATH=/usr/local/lib/node_modules


export GIT_AUTHOR_NAME='kevin olson'
export GIT_USER_NAME='acidjazz'
export GIT_AUTHOR_EMAIL='acidjazz@gmail.com'
export SVN_EDITOR='vi'
export EDITOR='mvim'

git config --global user.email "acidjazz@gmail.com"
git config --global user.name "kevin olson"

alias chrome="open /Applications/Google\ Chrome.app/ --args --disable-web-security"

alias psg='ps aux | grep $1'
alias psgg='ps auxww | grep $1'
alias pss='ps aux'
alias psss='ps auxwwf'
alias lss='ls -la'
alias l='ls'
alias lsd='ls -ld */'
alias lsr="ls -altpRFG"

#alias git="/Applications/Xcode.app/Contents/Developer/usr/bin/git"

alias gca="git commit -a"
alias gs="git status"
alias gd="git diff --color"

gcp() { git commit -am "$*"; git push; }
gcpg() { git commit -am "$*"; git push; ./operations/gh-pages.sh; }
gpom() { git pull origin master; }

alias s-a="ssh acidjazz@notchill.com"
alias s-2="ssh ec2-user@256.sh"

nopub() { ssh -o PubkeyAuthentication=no "$"; }


alias v='mvim'
alias vi='mvim'
alias vim='mvim'
alias vif='mvim $(fzf)'

t() { echo -e "\033];$1\007"; }

alias devchrome="chrome --allow-access-from-local-files"

# eval `gdircolors ~/solarized/dircolors-solarized/dircolors.256dark`

alias fuck='$(thefuck $(fc -ln -1))'
export PATH="/usr/local/sbin:$PATH"

set t_Co=256

source .bash_prompt
