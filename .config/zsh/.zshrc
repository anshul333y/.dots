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
source ~/.config/zsh/.zshalias

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
