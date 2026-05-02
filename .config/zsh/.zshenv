typeset -U path

export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

path=(
  "$HOME/.local/bin"
  "${XDG_DATA_HOME}/npm/bin"
  "${XDG_DATA_HOME}/pnpm"
  "${XDG_CACHE_HOME}/.bun/bin"
  $path
)

export HISTFILE="$XDG_STATE_HOME"/zsh/history
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/zcompdump-$HOST-$ZSH_VERSION"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/gcr/ssh"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"

export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export npm_config_prefix="${XDG_DATA_HOME}/npm"
export PNPM_HOME="${XDG_DATA_HOME}/pnpm"

export CARGO_HOME="$XDG_DATA_HOME/cargo"

export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
