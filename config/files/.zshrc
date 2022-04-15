
# User configuration

#PATH and Brew

export PATH=$HOME/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/local/sbin:~/.composer/vendor/bin:$PATH

# VoltaJS

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Path to your oh-my-zsh installation.

export ZSH="$HOME/.oh-my-zsh"

# ZSH Plugins

plugins=(git)

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"

# Fix Permissions

ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

# Aliases

alias intelbrew='arch -x86_64 /usr/local/Homebrew/bin/brew' #Intel homebrew

alias ls='ls -G'

alias killlogi='killall LogiMgrDaemon'

# SSH

ssh-add -A

clear


