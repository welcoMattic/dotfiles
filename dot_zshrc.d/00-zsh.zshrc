ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="spaceship"
DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-completions history history-substring-search zsh-syntax-highlighting git cmake fabric ansible pip tmux ssh-agent symfony2)

autoload -U compinit && compinit

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nano'
 fi

export SSH_KEY_PATH="~/.ssh/id_rsa"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

DEFAULT_USER=$USER
export DISABLE_AUTO_TITLE='true'

PATH=$PATH:~/.yarn/bin