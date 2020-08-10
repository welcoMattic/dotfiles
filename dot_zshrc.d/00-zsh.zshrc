eval "$(starship init zsh)"

autoload -U compinit && compinit

 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nano'
 fi

export SSH_KEY_PATH="~/.ssh/id_rsa"

DEFAULT_USER=$USER

PATH=$PATH:~/.yarn/bin
