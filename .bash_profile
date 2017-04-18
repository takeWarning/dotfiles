function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"
PS1="$GREEN\u$RED:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

export NVM_DIR=/usr/local/opt/nvm
source $NVM_DIR/nvm.sh

alias gb='git branch'
alias gd='git diff'
alias gog='cd ~/Projects/galileo'
alias gop='cd ~/Projects'
alias goh='cd ~/Projects/hypothesis-static'
alias gr='git remote -v'
alias grom='git pull --rebase origin master'
alias gs='git status'
alias la='ls -la'
alias ll='ls -l'
alias parrot='~/Documents/terminal-parrot'
