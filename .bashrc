#
# ~/.bashrc
#

[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# options
set -o vi
bind -f ~/.inputrc

# PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/bin/:$PATH"
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$(npm config get prefix)/bin:$PATH"

# env
export BROWSER=firefox
export TERM=foot
export EDITOR=nvim
export RUSTFLAGS="-A dead_code"
export NVM_DIR="$HOME/.nvm"
export WEBKIT_DISABLE_DMABUF_RENDERER=1
[ -f "$HOME/.deno/env" ] && . "$HOME/.deno/env"

# load nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# fnm path
FNM_PATH="$HOME/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "$(fnm env)"
fi

# bash completion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# aliases
alias dotnet_run='dotnet run --property WarningLevel=0'

alias ls='ls --color=auto'
alias l='ls -l -a --color=auto'
alias grep='grep --color=auto'

alias ff='fastfetch'
alias of='onefetch'

alias gs='git status --short'
alias gd='git diff'

alias ga='git add'
alias gc='git commit'

alias gp='git push'
alias gu='git pull'

alias gl='git log'
alias gb='git branch'

alias gi='git init'
alias gcl='git clone'

alias bat_info='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias bat='bat_info | grep -e "percentage" -e "state"'

# aliases (functions)
cpp_run() {
  local name="${1:-main}"
  g++ "./$name.cpp" -o "./$name" && "./$name"
}
