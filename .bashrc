# Set history length
HISTSIZE=10000
HISTFILESIZE=20000

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Nx alias
alias nx='yarn nx'

# Custom prompt
PS1=" \e[1;33m\W \$ \e[0m"

# Start tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# Allow using Ctrl S
stty -ixon

# NodeJS
export NODEJS_HOME=/opt/node-v16.13.0-linux-x64/bin
export PATH="$NODEJS_HOME:$PATH"

export MANIM=$HOME/manim
export PYTHONPATH=$MANIM:$PYTHONPATH

# React Native Android setup
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/opt/android-studio/jre

export EDITOR=vim
