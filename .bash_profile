export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.composer/vendor/bin::$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

alias psg='ps aux | grep $1'
alias psgg='ps auxww | grep $1'
alias pss='ps aux'
alias psss='ps auxwwf'

alias l='lsd'
alias ls='lsd'
alias lss='lsd -la'

# alias lsd='ls -ld */'
# replaced with https://github.com/Peltoche/lsd

alias lsr="ls -altpRFG"

alias gca="git commit -a"
alias gs="git status"
alias gd="git diff --color"

alias agi="ag --ignore-dir=dist --ignore-dir=node_modules --ignore-dir=vendor --ignore-dir=snapshots"

alias vi='mvim'
alias vif='mvim $(fzf)'

alias s-a="ssh acidjazz@notchill.com"

alias pubapi='ssh ec2-user@api-ec2.pubmedia.io'
alias pubweb='ssh ec2-user@web-ec2.pubmedia.io'
alias pubapico='ssh ec2-user@api-ec2.pubmedia.co'
alias pubwebco='ssh ec2-user@web-ec2.pubmedia.co'

alias mhlo='ssh ec2-user@staging.mhlo.io'

alias npvp='npm version patch; npm publish; git push --tags'

gc() { git commit -am "$(emojify "$*")"; }
gcp() { git commit -am "$(emojify "$*")"; git push; }
gmg() { gitmoji -l|grep -i "$*"; }
gcpg() { git commit -am "$*"; git push; ./operations/gh-pages.sh; }
gpom() { git pull origin master; }
gcap() { git commit --amend --no-edit; git push --force; }
gsrm() { git rm $(git ls-files --deleted); }

pu() { vendor/bin/phpunit --testdox; }

