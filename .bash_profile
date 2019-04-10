function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/php@7.2/lib"
export CPPFLAGS="-I/usr/local/opt/php@7.2/include"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

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

alias agi="ag --ignore-dir=dist --ignore-dir=node_modules --ignore-dir=vendor --ignore-dir=snapshots"

alias vi='mvim'
alias vif='mvim $(fzf)'

alias s-a="ssh acidjazz@notchill.com"

gc() { git commit -am "$(emojify "$*")"; }
gcp() { git commit -am "$(emojify "$*")"; git push; }
gmg() { gitmoji -l|grep -i "$*"; }
gcpg() { git commit -am "$*"; git push; ./operations/gh-pages.sh; }
gpom() { git pull origin master; }
gcap() { git commit --amend --no-edit; git push --force; }
gsrm() { git rm $(git ls-files --deleted); }

pu() { vendor/bin/phpunit --testdox; }

