set -o vi
export IMAC=10.32.60.169

ulimit -S -n 9999

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
# export PS1="\[\e[32m\]\$(parse_git_branch)\[\e[34m\]\h:\W \$ \[\e[m\] 🌀  "
# export PS1="\[\e[32m\]\$(parse_git_branch)\[\e[34m\]\h:\W  \[\e[m\]🌀  "
# export PS1="\[$(tput sgr0)\]\033[38;5;15m\033[38;5;86m\A\[$(tput sgr0)\]$(parse_git_branch)\[\e[34m\]"
# export PS1="\u [\$(total-file-size-curr-dir) bytes]> "
# export PS1="\[$(tput sgr0)\]\033[38;5;15m\033[38;5;86m\A\[$(tput sgr0)\]\033[38;5;15m\033[38;5;15m\$?\[$(tput sgr0)\]"
now="$(date +"%I:%M%p")"
# export PS1="[\$(total-file-size-curr-dir) bytes] [$now] \$(parse_git_branch)> "
# export PS1="\n\[\e[1;30m\][$$:$PPID - \j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \[\e[1;30m\][\[\e[1;34m\]\u@\H\[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY:-o} \[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\] \n\$ "

export sample_emoji=🌀

git_branch='`git rev-parse --abbrev-ref HEAD 2> /dev/null | sed s/^/\ \|\ /`'
emojis=(🐶 🐺 🐱 🐭 🐹 🐰 🐸 🐯 🐨 🐻 🐷 🐮 🐵 🐼 🐧 🐍 🐢 🐙 🐠 🐳 🐬 🐥)
emoji='`echo ${emojis[$RANDOM % 22]}`'
emoji=🌀
# export PS1="\[\033[0;36m\]\T | \W$git_branch | $emoji  > \[\e[0m\]"
export PS1="\[\033[0;36m\]\T | \W$git_branch | $emoji  > \[\e[0m\]"

# use bash_profile for go
#export PATH=$PATH:/usr/local/go/bin

source $HOME/.bash_aliases

export PATH=$PATH:$HOME/local/bin

export DEV=$HOME/dev/CpLnkd3
export CpLnkd3=$DEV
export CPLNKD3=$DEV

# export CDPATH=.:$DEV

# boot2docker
# export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375
export DOCKER_HOST=tcp://192.168.59.103:2375

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export EDITOR=nvim

HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend

 #give subuser priority
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/
export ES_HOME=$HOME/pkg/elasticsearch/elasticsearch-1.2.1
export PATH=$ES_HOME/bin:$JAVA_HOME/bin:$PATH

#if [ -f ~/.git-completion.bash ]; then
#  . ~/.git-completion.bash
#fi

# nvidia cuda
export PATH=$PATH:/usr/local/cuda/bin

export PATH=$HOME/subuser/bin:$PATH
export SSH_ASKPASS=/usr/libexec/ssh-askpass
#source /usr/local/etc/bash_completion.d/password-store

export VAGRANT_DEFAULT_PROVIDER=vmware_fusion

export PATH=$PATH:$HOME/local/packer-0.7.1

export AD=$HOME/vagrant/ad-rms__win2012R2
export ADRMS=$AD
export RMS=$AD

export MANPATH=$MANPATH:/Library/Frameworks/Mono.framework/Versions/Current/man

export PATH=$PATH:/Library/Frameworks/Mono.framework/Commands

# don't use this with rvm
# export GEM_HOME="/usr/local"


# source $HOME/.bash_completion.d/*
# ls -1 $HOME/.bash_completion.d/ | while read file; do
#  source $j
#done
source /usr/local/etc/bash_completion.d/password-store

complete -C '/usr/local/aws/bin/aws_completer' aws
export PATH=/usr/local/aws/bin:$PATH

# for file in $HOME/.bash_completion.d/*; do source $file; done
source $HOME/.bash_completion.d/git-completion.bash

export PATH=$PATH:/usr/local/opt/coreutils/libexec/gnubin

export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
