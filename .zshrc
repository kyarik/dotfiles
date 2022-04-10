HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=20000

unsetopt beep

zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit

source $HOME/shell/antigen.zsh
antigen bundle jeffreytse/zsh-vi-mode
antigen apply

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Nx alias
alias nx='yarn nx'

# Custom prompt
PS1=" %B%F{50}%1~%f%b %(?.%F{green}%B✓%b.%F{red}%B✗%?%b)%f "

# Start tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# Allow using Ctrl S
stty -ixon

export EDITOR=vim
