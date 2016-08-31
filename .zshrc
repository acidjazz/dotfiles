# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/k/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="kolo"
#ZSH_THEME="agnoster"
#https://github.com/frmendes/geometry
ZSH_THEME="geometry"
#
# git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
#CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(aws brew composer common-aliases web-search zsh-syntax-highlighting)

# for https://github.com/zsh-users/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#
#  mmm/............................................................./mmm
#  mmo................-:://::-.......-:::::::::::::-........-::///:-.omm
#  md-.............:+yhddddddhy+-..../ddddddddddddd+....../shdddddddyodm
#  mo.............-hmmmhyyyydmmmh:.../mmmmhhhhhhhhh+....:ydmmdhyyyhddoom
#  m-..............-ss:-....-ymmmy.../mmmm---------....:dmmms:-...-:/.-m
#  d.........................ymmmy.../mmmm-/+ooo+:-....ymmmy-:+ooo+/-..d
#  h.......................:smmmd:.../mmmmhmmmmmmdh+...dmmmshdmmmmmmhs-h
#  h.....................:sdmmdy:....:hhdho+//+ymmmm+..dmmmdyo//+sdmmmhh
#  d..................-+ydmmdy/.......--:.......smmmh..ymmms......:mmmmm
#  m-..............-:shmmmds/-----....:s/--...-:hmmms..:dmmd/-...-ommmmm
#  mo..............hmmmmmmhhhhhhhh...+dmmdhyyyhdmmmy-.../hmmmhyyyhmmmdhm
#  md-.............ddddddddddddddd...-+shdddddddhy/-.....-oydddddddho:dm
#  mmo.............:::::::::::::::.......-:///::-...........-:///:-..omm
#  mmm/............................................................./mmm
#
# oh-my-zsh other config

# android SDK / studio
ANDROID_SDK="$HOME/android/sdk"
ANDROID_HOME="$HOME/android/sdk"
ANDROID_BIN=${ANDROID_SDK}/platform-tools
PATH=${ANDROID_SDK}/platform-tools:${ANDROID_SDK}/tools:$PATH

# git config
PATH=/usr/local/git/bin:$PATH:
PATH=~/.composer/vendor/bin:$PATH

export GIT_AUTHOR_NAME='kevin olson'
export GIT_USER_NAME='acidjazz'
export GIT_AUTHOR_EMAIL='acidjazz@gmail.com'
export SVN_EDITOR='vi'
export EDITOR='mvim'

git config --global user.email "acidjazz@gmail.com"
git config --global user.name "kevin olson"

# pretty dircolors
# https://github.com/trapd00r/LS_COLORS
# brew install coreutils ( for gnu ls/etc )
# wget https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS -O $HOME/.dircolors
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
eval `gdircolors ~/.dircolors`
alias ls='gls --color'
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit

# node
export NODE_PATH=/usr/local/lib/node_modules

alias chrome="open /Applications/Google\ Chrome.app/ --args --disable-web-security"

alias psg='ps aux | grep $1'
alias psgg='ps auxww | grep $1'
alias pss='ps aux'
alias psss='ps auxwwf'
alias lss='ls -la'
alias l='ls'
alias lsd='ls -ld */'
alias lsr="ls -altpRFG"

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

set t_Co=256


