set -o vi
export IMAC=10.32.60.169

ulimit -S -n 9999

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
PS1="\[\e[32m\]\$(parse_git_branch)\[\e[34m\]\h:\W \$ \[\e[m\]"
export PS1

# use bash_profile for go
#export PATH=$PATH:/usr/local/go/bin

source $HOME/.bash_aliases

export DEV=$HOME/dev/CpLnkd3

# boot2docker
export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend

 #give subuser priority
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/
export ES_HOME=$HOME/pkg/elasticsearch/elasticsearch-1.2.1
export PATH=$ES_HOME/bin:$JAVA_HOME/bin:$PATH

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

test -f $HOME/.bash_functions && source $HOME/.bash_functions

# nvidia cuda
export PATH=$PATH:/usr/local/cuda/bin

PATH=$HOME/subuser/bin:$PATH
export SSH_ASKPASS=/usr/libexec/ssh-askpass
#source /usr/local/etc/bash_completion.d/password-store

# don't use this with rvm
# export GEM_HOME="/usr/local"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source /usr/local/etc/bash_completion.d/password-store
