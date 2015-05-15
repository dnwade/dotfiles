# $1 = type; 0 - both, 1 - tab, 2 - title
# rest = text
setTerminalText () {
    # echo works in bash & zsh
    local mode=$1 ; shift
    # echo -ne "\033]$mode;$@\007"
    export PROMPT_COMMAND="echo -ne \"\033]$mode;$@\007\""
    # export PROMPT_COMMAND="echo -ne \"\033]0;$mode;$@\007\""
}
stt_both  () { setTerminalText 0 $@; }
stt_tab   () { setTerminalText 1 $@; }
stt_title () { setTerminalText 2 $@; }

gem_install () {
	gem install --no-rdoc --no-ri $@
}

grep_bash(){
  for f in  ~/.bashrc ~/.profile ~/.bash_profile ~/.bash_login \
        /etc/profile /etc/bash.bashrc /etc/environment; 
  do 
    [ -e $f ] && grep -H "$@" $f; 
  done
}

reverseIp() {
  # echo "$1" | awk 'BEGIN{FS=".";ORS="."} {for (i = NF; i > 0; i--){print $i}}'
  rev
}

#get_dir() {
#  DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#  echo "${DIR}"
#}

flush_cache() {
  dscacheutil -flushcache; sudo killall -HUP mDNSResponder
}

function set_window_title()
{
  echo -e "\033]0; ${1:-$USER@$HOST - $SHLVL} \007";
}

