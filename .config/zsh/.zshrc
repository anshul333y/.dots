# anshul333y's zsh config

# history
HISTSIZE=10000000
SAVEHIST=10000000

# oh-my-zsh
export ZSH="$HOME/.config/oh-my-zsh"
ZSH_THEME="random"
ZSH_THEME_RANDOM_QUIET="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting you-should-use)
source "$ZSH/oh-my-zsh.sh"

# alias
alias e="exit"
alias c="clear"
alias n="nvim"
alias t="tmux"
alias y="yazi"
alias ff="fastfetch"
alias i="sudo pacman -S"
alias u="sudo pacman -Rsun"

alias s="cd ~/.dots && stow --adopt . && cd -"
alias m="sudo mount -o uid=$(id -u),gid=$(id -g),umask=022"
alias music='yt-dlp -f bestaudio -x --audio-format best --embed-thumbnail --embed-metadata --download-archive "$HOME/music/archive.txt" -P "$HOME/music"'
alias gparted='pkexec env WAYLAND_DISPLAY=$WAYLAND_DISPLAY XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR gparted'
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'

alias d="docker"
alias dc="docker-compose"

# use vim keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# starship
if (( RANDOM % 3 == 0 )); then
  eval "$(starship init zsh)"
fi

# fzf
source <(fzf --zsh)

# zoxide
eval "$(zoxide init --cmd cd zsh)"
