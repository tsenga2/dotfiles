function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}
export PS1='\e[32m\t@\h \e[34m\w \[\033[31m\]$(parse_git_branch)\e[39m $ '

alias ll='ls -ltra'
alias vi='vim'
alias clc='clear'
alias mm='make'

source /opt/intel/oneapi/setvars.sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/tsenga/hdf5-gcc/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/OpenBLAS/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/tsenga/hdf5-intel/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/intel/oneapi/mkl/latest/lib/intel64

