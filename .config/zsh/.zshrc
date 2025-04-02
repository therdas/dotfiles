# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


HISTFILE="$ZDOTDIR/zsh-history"
HISTSIZE=5000
SAVEHIST=5000

setopt INC_APPEND_HISTORY_TIME
setopt autocd extendedglob

unsetopt beep

bindkey -v
bindkey -a "^[[3~" vi-delete-char

# Load Antigen
source "$ZDOTDIR/.antigen/antigen.zsh"

# Add Antigen Plugins
antigen bundles <<EOBUNDLES
  # Powerline10k
  romkatv/powerlevel10k

  # Syntax highlighting bundle.
  zdharma-continuum/fast-syntax-highlighting

  # Fish-like auto suggestions
  zsh-users/zsh-autosuggestions

  # Extra zsh completions
  zsh-users/zsh-completions
EOBUNDLES

# Theme
antigen theme romkatv/powerlevel10k

# Finalize Antigen
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f "$XDG_CONFIG_HOME/powerlevel10k/p10k.zsh" ]] || source "$XDG_CONFIG_HOME/powerlevel10k/p10k.zsh"

source $ZDOTDIR/pyvenv/zsh-pyvenv
alias la="ls -la"
