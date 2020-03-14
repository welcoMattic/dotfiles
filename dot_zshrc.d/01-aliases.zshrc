# ZSH
alias reload="source $HOME/.zshrc"

# Pacman
alias pacman="sudo pacman"

# Git
alias g="git"

# Symfony
alias sf="php bin/console"

#youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -100"

#Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

#quickly kill conkies
alias kc='killall conky'

# ArcoLinux
alias skel='cp -rf /etc/skel/* ~'
alias fc='sudo fc-cache -fv'
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias update='sudo pacman -Syyu'

alias ll="exa -lgha"