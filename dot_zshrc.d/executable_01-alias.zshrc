# ZSH
alias reload="source $HOME/.zshrc"

# Pacman
alias pacman="sudo pacman"

# Git
alias g="git"

# conventional commit
alias convco="docker run --rm -v '$PWD:/tmp' -w /tmp convco/convco"

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

# GNU candies Rust rewritten
alias ll="exa -lgha"
#alias grep="rg"

# Docker services
alias d-mysql="docker run -it -d --name mysql -v /home/welcomattic/.mysql/conf:/etc/mysql/conf.d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password mysql:8.0"
alias d-pgsql="docker run -it --name=postgres -p 5432:5432 -d -e POSTGRES_PASSWORD=password  postgres:13.3"
alias d-redis="docker run -it --name redis -p 6379:6379 -d redis:6.2"
alias d-redisinsight="docker rm --force redisinsight && docker run -it --name redisinsight -v redisinsight:/db --network host redislabs/redisinsight:1.10.1"

# Docker misc.
alias docker-clear-logs='sudo sh -c "truncate -s 0 /var/lib/docker/containers/*/*-json.log"'

# chezmoi
alias cm="chezmoi"
