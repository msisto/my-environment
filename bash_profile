source ~/.staging

# Pg 9.3 fix for rails db connections
export PGHOST=localhost

# Include rbenv in path
export PATH="$HOME/.rbenv/bin:$PATH"

# Include toolchest in path
export PATH=$PATH:~/src/toolchest/bin

# Add ~/bin to path
export PATH=$PATH:~/bin

# Add Python bin path
export PATH=$PATH:/opt/boxen/homebrew/share/python

# Boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# Git completion
source ~/.git-completion.bash

# Added by travis gem
source /Users/mattsisto/.travis/travis.sh

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# Aliases
alias assets="RAILS_ENV=development bundle exec rake assets:clean"
alias bake="bundle exec rake"
alias be="bundle exec"
alias glog="git l"
alias gs="git status"
alias npmsucks="rm -rf node_modules/ && npm install"

# Project shortcut aliases
alias cronos="cd ~/src/cronos"
alias environment="cd ~/src/my-environment"
alias fredette="cd ~/src/fredette"
alias patients="cd ~/src/icispatients"
alias snowflake="cd ~/src/snowflake"
alias staff="cd ~/src/icisstaff"

# Load in the git branch prompt script.
source ~/bin/.git-prompt.sh

# Ruby version (from rbenv) in prompt
# rbenv version | sed -e 's/ .*//'
__rbenv_ps1 ()
{
  rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
  printf $rbenv_ruby_version
}

export PATH=$PATH:~/src/toolchest/bin

function prompt {
  local  BLACK="\[\033[0;30m\]"
  local  BLACKBOLD="\[\033[1;30m\]"
  local  RED="\[\033[0;31m\]"
  local  REDBOLD="\[\033[1;31m\]"
  local  GREEN="\[\033[0;32m\]"
  local  GREENBOLD="\[\033[1;32m\]"
  local  YELLOW="\[\033[0;33m\]"
  local  YELLOWBOLD="\[\033[1;33m\]"
  local  BLUE="\[\033[0;34m\]"
  local  BLUEBOLD="\[\033[1;34m\]"
  local  PURPLE="\[\033[0;35m\]"
  local  PURPLEBOLD="\[\033[1;35m\]"
  local  CYAN="\[\033[0;36m\]"
  local  CYANBOLD="\[\033[1;36m\]"
  local  WHITE="\[\033[0;37m\]"
  local  WHITEBOLD="\[\033[1;37m\]"

  export PS1="$GREEN[\t] $YELLOW\W$RED\$(__git_ps1) $YELLOW\$(__rbenv_ps1) $GREEN\u\[\033[00m\] \\$ "
}

export EDITOR=/usr/local/bin/atom

prompt
