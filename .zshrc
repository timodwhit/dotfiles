# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin
export PATH="$HOME/git/drush:$PATH"

# System paths
alias ...='cd ../..'
alias ..='cd ..'
alias app='open -a'
alias c='open -a Google\ Chrome\ Canary --args' # Non-blockingly opens chrome.
alias lastc='open -a Google\ Chrome\ Canary --args --restore-last-session'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
alias spotify='open -a Spotify'
alias q='exit'
alias s='open Sublime\ Text\ 2'
# -- Functions --
#
# Lookup item in OS X dictionary.
dict() { open "dict://$1" }

# Connect to VNC address.
vnc() { open "vnc://$1" }

# Remove .DS_Store files.
rmds() {
        if [[ $1 == "" ]]; then
                echo "usage: rmds [directory]";
        else
                find $1 -name ".DS_Store" -type f -print -delete;
        fi
}

# Quickly lookup entry in Wikipedia.
wiki() {
        if [[ $1 == "" ]]; then
                echo "usage: wiki [term]";
        else
                dig +short txt $1.wp.dg.cx;
        fi
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=/usr/local/bin:$PATH
export PATH=~/bin:/usr/local/bin:/usr/local/mysql/bin:$PATH
export NVM_DIR="/Users/tim.whitney/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
eval "$(chef shell-init zsh)"

# Vagrant commands
alias vp="vagrant provision"
alias vrp="vagrant reload --provision"
alias vup="vagrant up"
alias vprm="rm ./.vagrant/machines/drupaldev/virtualbox/synced_folders && vrp"
alias vudu="vagrant destroy -f && vagrant up"
alias vgs="vagrant global-status"

alias ll="ls -la"
alias pl="pwd; ll"

export DOCKER_HOST=tcp://192.168.59.103:2375

# Docker (default for Vagrant based boxes)
export DOCKER_HOST=tcp://localhost:2375



# Automatically added by Platform.sh CLI installer
export PATH="/Users/tim.whitney/.platformsh/bin:$PATH"
. '/Users/tim.whitney/.platformsh/platform.rc' 2>/dev/null
