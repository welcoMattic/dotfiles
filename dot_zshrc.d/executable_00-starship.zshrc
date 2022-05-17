eval "$(starship init zsh)"

export DISABLE_AUTO_TITLE='true'

autoload -U compinit && compinit

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=50000

zstyle ':completion:*' menu select

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg=green,fg=white'
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='bg=red,fg=white'

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=white,bg=transparent,underline"
