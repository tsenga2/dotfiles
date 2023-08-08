export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/R/arm64/bin:$PATH
export PATH=/Users/tsenga/Library/Python/3.9/bin:$PATH

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{green}%*@%n%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

alias ll='ls -lt'
alias vi='vim'
alias clc='clear'
