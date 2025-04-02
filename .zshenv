# Variables
export WORKSPACE="$HOME/.workspace"
export DOTFILES="$HOME/.dotfiles"

# Environment variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# ZSH
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Antigen
export ADOTDIR="$XDG_DATA_HOME/antigen"

# .net
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"

# Editors
export EDITOR="nvim"
export VISUAL="nvim"

# RUST
export CARGO_HOME="$HOME/.workspace/cargo"
export RUSTUP_HOME="$HOME/.workspace/rustup"

# Android
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"

# asdf
export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/asdfrc"
export ASDF_DEFAULT_TOOL_VERSIONS_FILENAME="$XDG_CONFIG_HOME/asdf/tool_versions"
export ASDF_DATA_DIR="$XDG_CONFIG_HOME/asdf/data/"
export ASDF_DIR="$XDG_CONFIG_HOME/asdf"

# GnuPG
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# Valkey and Redis
export REDISCLI_HISTFILE="$XDG_CACHE_HOME/valkey/valkeycli_history"

# ZSH Specific
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/zsh-history"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

# golang
export GOPATH="$WORKSPACE/go"
export GOBIN="$WORKSPACE/go/bin"
export GOCACHE="$XDG_CACHE_HOME/go/build"

# node
export NPM_PATH="$XDG_CONFIG_HOME/node_modules"
export NPM_BIN="$XDG_CONFIG_HOME/node_modules/bin"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node/node_repl_history.txt"

# NVM
export NVM_DIR="$XDG_DATA_HOME/nvm"

# Composer
export COMPOSER_HOME="$XDG_CONFIG_HOME/composer"

# Nvidia, Wine and Proton
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export WINEPREFIX="$XDG_DATA_HOME/wine"

# PostgreSQL
export PSQLRC="$XDG_CONFIG_HOME/psql/psqlrc"

# PATH
export PATH="$COMPOSER_HOME/vendor/bin:$PATH"                       # COMPOSER
export PATH="$GOBIN:$PATH"                                          # GOBIN
export PATH="$NPM_BIN:$PATH"                                        # NPM
export PATH="$HOME/.local/bin:$PATH"