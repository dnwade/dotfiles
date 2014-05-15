set -o vi
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export IMAC=10.32.60.169

ulimit -S -n 9999

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
PS1="\[\e[32m\]\$(parse_git_branch)\[\e[34m\]\h:\W \$ \[\e[m\]"
export PS1

# use bash_profile for go
#export PATH=$PATH:/usr/local/go/bin

HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend

 #give subuser priority
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

PATH=$HOME/subuser/bin:$PATH
export SSH_ASKPASS=/usr/libexec/ssh-askpass
source /usr/local/etc/bash_completion.d/password-store
