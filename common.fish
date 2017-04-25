# Editors
set -xU EDITOR "nano"
set -xU VISUAL "nano"
set -xU PAGER "less"

# XDG base directory specification
set -xU XDG_CACHE_HOME "$HOME/.cache"
set -xU XDG_CONFIG_HOME "$HOME/.config"
set -xU XDG_DATA_HOME "$HOME/.local/share"
mkdir -p "$XDG_CACHE_HOME" "$XDG_CONFIG_HOME" "$XDG_DATA_HOME"

# User binaries
set -l USER_BIN_HOME "$HOME/.local/bin"
mkdir -p "$USER_BIN_HOME"

# less
set -xU LESSHISTFILE "$XDG_DATA_HOME/less/history"
mkdir -p "$XDG_DATA_HOME/less"

# Extra paths
set -U fish_user_paths "$USER_BIN_HOME"
