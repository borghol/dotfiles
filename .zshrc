export ZSH="/Users/borghol/.oh-my-zsh"

ZSH_THEME="gruvbox"

plugins=(
    aws
    git
    dotenv
    osx
    zsh-autosuggestions
    web-search
    extract
    history
    sudo
    colored-man-pages
    copydir
    copyfile
    docker
    docker-compose
    gitignore
    zsh-syntax-highlighting
    z
)

source $ZSH/oh-my-zsh.sh
alias :q=exit
alias v=nvim

export PATH="$PATH:/Users/borghol/tools/flutter/bin"
export VISUAL=nvim
export EDITOR="$VISUAL"
export PYENV_ROOT="/usr/local/var/pyenv"
export JAVA_HOME=`/usr/libexec/java_home -v 13.0.2`

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

eval "$(pyenv init -)"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

