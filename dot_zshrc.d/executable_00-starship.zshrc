eval "$(starship init zsh)"

autoload -U compinit && compinit

autoload -Uz compinit
zmodload zsh/complist

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
  compinit;
else
  compinit -C;
fi;

HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=10000

zstyle ':completion:*' menu select

