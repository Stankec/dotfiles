###########################
# OH MY ZSH CONFIGURATION #
###########################

export ZSH=$HOME/.oh-my-zsh
export LANG=en_US.UTF-8
export EDITOR=nvim
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
# time that oh-my-zsh is loaded.
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

export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH:$HOME/.local/bin"
# export MANPATH="/usr/local/man:$MANPATH"
source $HOME/.cargo/env
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

stty ixany
stty ixoff -ixon
stty stop undef
stty start undef
stty erase ^H
stty ek

bindkey "^?" backward-delete-char
bindkey "^[[3~" delete-char

#######
# GPG #
#######

export GPG_TTY=$(tty)

########
# WORK #
########

# source "${HOME}/.workrc"

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
alias update-rbenv="git -C ~/.rbenv pull; git -C ~/.rbenv/plugins/ruby-build pull"
alias vim="nvim"
alias gpg="gpg2"
alias docker-clean="curl https://gist.githubusercontent.com/Stankec/d2c801d193ce48224ae052b49ba60856/raw/clean_docker.sh | bash"

###############
# COMPLETIONS #
###############

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
source ~/.rbenv/completions/rbenv.zsh
