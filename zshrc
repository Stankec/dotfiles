###########################
# OH MY ZSH CONFIGURATION #
###########################

export ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="robbyrussell"
# ZSH_THEME="bira"
# ZSH_THEME="bullet-train"
# ZSH_THEME="agnoster"
ZSH_THEME="dracula"
# ZSH_THEME="half-life"

plugins=(git osx npm rbenv z zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

######################
# USER CONFIGURATION #
######################

# Enable UTF-8
export LANG=en_US.UTF-8

# Set default editor
export EDITOR=nvim
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
export BROWSER=/Applications/FirefoxDeveloperEdition.app/Contents/MacOS/firefox

# Load secret ENV variables
. /Users/stanko/.env_secrets

# Configure application lookup path
export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH:$HOME/.local/bin"
test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"
. /Users/stanko/kerl/20.1/activate
source $HOME/.kiex/elixirs/elixir-1.5.2.env

# Configure environment for use with Cargo and Rust
source $HOME/.cargo/env

# Enable FZF - Better Ctrl+R
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fix integration with tmux and vim
stty ixany
stty ixoff -ixon
stty stop undef
stty start undef
stty erase ^H
stty ek
bindkey "^?" backward-delete-char
bindkey "^[[3~" delete-char

# Extend manual pages lookup path
# export MANPATH="/usr/local/man:$MANPATH"

#######
# GPG #
#######

export GPG_TTY=$(tty)

###############
# COMPLETIONS #
###############

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
source ~/.rbenv/completions/rbenv.zsh

########
# WORK #
########

source "${HOME}/.workrc"

###########
# ALIASES #
###########

alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias nvimrc="$EDITOR ~/.vimrc"
alias tmuxconf="$EDITOR ~/.tmux.conf"
alias jsc=/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc
alias be="bundle exec"
alias ll="ls -alGh"
alias vim="nvim"
alias gpg="gpg2"
alias docker-clean="curl https://gist.githubusercontent.com/Stankec/d2c801d193ce48224ae052b49ba60856/raw/clean_docker.sh | bash"
alias git-hours="docker run --rm -v \$PWD:/code ymajik/git-hours"
