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