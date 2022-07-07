# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


alias psg='ps aux | grep $1'
alias psgg='ps auxww | grep $1'
alias pss='ps aux'
alias psss='ps auxwwf'

alias l='lsd'
alias ls='lsd'
alias lss='lsd -la'

alias gs="git status"
alias gd="git diff --color"

# replaced with https://github.com/Peltoche/lsd

alias s-a="ssh acidjazz@notchill.com"

alias npvp='npm version patch; npm publish; git push --tags'

gc() { git commit -am "$(emojify "$*")"; }
gcp() { git commit -am "$(emojify "$*")"; git push; }
gmg() { gitmoji -l|grep -i "$*"; }
gcpg() { git commit -am "$*"; git push; ./operations/gh-pages.sh; }
gpom() { git pull origin master; }
gcap() { git commit --amend --no-edit; git push --force; }
gsrm() { git rm $(git ls-files --deleted); }

ghrs() { git log --reverse --pretty=format:"%C(blue bold)%ad %C(black)- %C(reset)%s" --after="$1 00:00" --before="$1 23:59" --date=format:'%m/%d/%y %I:%M%p' }

pu() { vendor/bin/phpunit --testdox; }


export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

export PNPM_HOME="/Users/k/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH="/Users/k/.composer/vendor/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
