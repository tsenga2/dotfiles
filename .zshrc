export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/R/arm64/bin:$PATH
export PATH=/Users/tsenga/Library/Python/3.9/bin:$PATH

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{red}%*%f(%F{green}%n%f) %F{blue}%~%f %F{yellow}${vcs_info_msg_0_}%f$ '

alias ll='ls -ltrGF'
alias vi='vim'
alias clc='clear'
alias gg='git'
alias mm='make'

setopt no_beep

bindkey -v
zstyle ':completion:*:default' menu select=2''

source /opt/intel/oneapi/setvars.sh
