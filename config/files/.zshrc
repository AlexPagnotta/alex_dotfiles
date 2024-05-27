
# User configuration

#PATH and Brew

export PATH=$HOME/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/local/sbin:~/.composer/vendor/bin:$PATH

# VoltaJS

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# PyEnv

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Init Oh My Zsh

export ZSH="$HOME/.oh-my-zsh"

ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

# Aliases

alias intelbrew='arch -x86_64 /usr/local/Homebrew/bin/brew' #Intel homebrew

alias ls='ls -G'

alias killlogi='killall LogiMgrDaemon'

# SSH

ssh-add -A

clear


