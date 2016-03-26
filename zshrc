# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export LANG=en_US.UTF-8
export EDITOR=nvim
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="bira"
ZSH_THEME="bullet-train"
# ZSH_THEME="agnoster"

# Sources
# source ~/.bin/tmuxinator.zsh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-flow battery brew npm rbenv postgres z zsh-syntax-highlighting codeclimate)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/heroku/bin:/usr/local/bin:/Users/Stanko/.rbenv/shims:/Users/Stanko/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# GPG
eval $(/usr/local/Cellar/gpg-agent/2.0.29/bin/gpg-agent --daemon --no-grab --write-env-file $HOME/.gpg-agent-info)
export GPG_TTY=$(tty)
export GPG_AGENT_INFO
# eval "$(ssh-agent -s)"

# if pgrep "gpg-agent" > /dev/null; then
# else
#   echo "Starting GPG agent..."
#   /usr/local/Cellar/gpg-agent/2.0.29/bin/gpg-agent --daemon --enable-ssh-support --write-env-file /Users/Stanko/.gpg-agent-info
# fi

# if [[ $(uname) == Darwin ]]; then
#   if [ -f "${HOME}/.gpg-agent-info" ]; then
#     . "${HOME}/.gpg-agent-info"
#     export GPG_AGENT_INFO
#     export SSH_AUTH_SOCK
#   fi
# fi

# Docker
eval "$(docker-machine env default)"

# Work
. "${HOME}/.infinumrc"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias nvimrc="$EDITOR ~/.nvimrc"
alias tmuxconf="$EDITOR ~/.tmux.conf"
alias jsc=/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc
alias be="bundle exec"
alias ll="ls -alGh"
alias update-rbenv="git -C ~/.rbenv pull; git -C ~/.rbenv/plugins/ruby-build pull"
alias vim="nvim"
alias gpg="gpg2"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

PERL_MB_OPT="--install_base \"/Users/Stanko/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/Stanko/perl5"; export PERL_MM_OPT;

stty ixany
stty ixoff -ixon
stty stop undef
stty start undef
stty erase ^H
stty ek

bindkey "^?" backward-delete-char
bindkey "^[[3~" delete-char
