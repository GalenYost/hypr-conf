#
# ~/.bashrc
#

[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/.dotnet/tools"
export NVM_DIR="$HOME/.nvm"

# load nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# deno env
[ -f "$HOME/.deno/env" ] && . "$HOME/.deno/env"

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
alias tauri_npm='WEBKIT_DISABLE_DMABUF_RENDERER=1 npm run tauri dev'
alias tauri_deno='WEBKIT_DISABLE_DMABUF_RENDERER=1 deno task tauri dev'

# aliases (functions)
cpp_run() {
  local name="${1:-main}"
  g++ "./$name.cpp" -o "./$name" && "./$name"
}
. "/home/user/.deno/env"
