D=$'\e[38;40m'
PINK=$'\e[35;40m'
GREEN=$'\e[32;40m'
ORANGE=$'\e[33;40m'
export NODE_ENV=development
#export PS1='${PINK}\u ${D}in ${GREEN}\w ${D}\n$ '
export CLICOLOR=1
export ARCHFLAGS="-arch x86_64"
export PGPORT=5433

test -f ~/.bashrc && source ~/.bashrc
test -f ~/.bash_functions && source ~/.bash_functions

export DOCKER_HOST=localhost

export IMAC=10.32.60.169
export DEV=$HOME/dev/CpLnkd3
set -o vi

export PGDATA=/usr/local/var/postgres

if [ -f ~/.git-completion.bash ]; then
	  . ~/.git-completion.bash
fi
	
members () { dscl . -list /Users | while read user; do printf "$user "; dsmemberutil checkmembership -U "$user" -G "$*"; done | grep "is a member" | cut -d " " -f 1; }; 

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
export PATH=$HOME/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# camlistore
export PATH=$PATH:/Users/dwade/pkg/camlistore/bin

export DOCKER_HOST=tcp://localhost:4243
export PATH=/usr/local/sbin:$PATH

export PATH=/Developer/NVIDIA/CUDA-5.5/bin:$PATH
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-5.5/lib:$DYLD_LIBRARY_PATH


# The next line updates PATH for the Google Cloud SDK.
source /Users/dwade/google-cloud-sdk/path.bash.inc

# The next line enables bash completion for gcloud.
source /Users/dwade/google-cloud-sdk/completion.bash.inc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
