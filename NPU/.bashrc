# Locales

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Aliases

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ls='ls -hFG'
alias l='ls -lF'
alias ll='ls -alF'
alias lt='ls -ltrF'
alias ll='ls -alF'
alias lls='ls -alSrF'
alias llt='ls -altrF'
alias cdkernel='cd /workspace/project/PaddleCustomDevice/backends/npu/kernels'
alias cdtests='cd /workspace/project/PaddleCustomDevice/backends/npu/build/tests'
alias cdbuild='cd /workspace/project/PaddleCustomDevice/backends/npu/build/'
alias cdproject='cd /workspace/project/PaddleCustomDevice/backends/npu/'
alias cdunittests='cd /workspace/project/PaddleCustomDevice/backends/npu/build/tests/unittests'
alias cdpaddle='cd /workspace/project/Paddle'
alias npu-info='npu-smi info'

npu-proc (){
    npu-smi info -t proc-mem -i "$@";
}

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

function look_best( ){
    cat "$@" | grep best;
}

function look_ir( ){
    grep "REG_OP($1" *.h -B 20 -A 10
}

# Colorize directory listing

alias ls="ls -ph --color=auto"
alias pstall='pip install -U --no-deps --force-reinstall'

# Colorize grep

if echo hello|grep --color=auto l >/dev/null 2>&1; then
  alias grep='grep --color=always'
  export GREP_COLOR="1;31"
fi

# Shell
export CLICOLOR="1"

source ~/.scripts/git-prompt.sh
export PS1="\[\e[1;33m\]λ\[\e[0m\] \h \[\e[1;32m\]\w\[\e[1;33m\]\$(__git_ps1 \" \[\e[35m\]{\[\e[36m\]%s\[\e[35m\]}\") \[\e[0m\]"
source ~/.scripts/git-completion.sh
source /opt/py37env/bin/activate
