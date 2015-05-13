alias less='less -i'

# http://stackoverflow.com/questions/15292391/is-it-possible-to-perform-a-grep-search-in-all-the-branches-of-git-project
alias grep_all="git branch -a | tr -d \* | xargs git grep"

alias sha256sum='shasum -a 256'

alias goapp=~/google-cloud-sdk/platform/google_appengine/goapp

alias gitbra='for k in `git branch|perl -pe s/^..//`;do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k|head -n 1`\\t$k;done|sort -r'

# alias pt='the_platinum_searcher'
alias vi='vim'

alias git='/usr/local/bin/git'
alias gen_migr='bundle exec rails generate migration'

alias cons='bundle exec rails console'

alias gen_model='bundle exec rails generate model'

alias db_migr='bundle exec rake db:migrate'
alias db_stat='bundle exec rake db:migrate:status'
alias migrate_status="bundle exec rake db:migrate:status"

alias teaspoon='bundle exec rake teaspoon'
alias teaspoons='bundle exec rake teaspoon'
alias tea='bundle exec rake teaspoon'

alias be="bundle exec"
alias cuc='bundle exec cucumber'
alias cuk='bundle exec cucumber'
alias cuke='bundle exec cucumber'
alias cukes='bundle exec cucumber'

alias gco='git checkout'
alias gci='git commit'
# alias grb='git rb'

alias console="bundle exec rails console"
alias dev_console="cd $DEV && bundle exec rails console"

alias ssh_staging="ey ssh -e staging"

alias rspec='bundle exec rspec'


alias enc='openssl enc -aes-256-cbc -in "$@"'
alias dec='openssl enc -d -aes-256-cbc -in "$@"'

# see: http://codeinthehole.com/writing/pull-requests-and-other-good-practices-for-teams-using-github/
alias g='git status -sb'
alias gs='git show'
alias gg='git grep -P'
alias gh='git hist'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gpp='git pull --rebase && git push'
alias gf='git fetch'
alias gb='git branch'
alias ga='git add'
alias gc='git commit'
alias gca='git commit --amend'
alias gcv='git commit --no-verify'
alias gd='git diff --color-words'
alias gdc='git diff --cached -w'
alias gdw='git diff --no-ext-diff --word-diff'
alias gdv='git diff'
alias gl='git log --oneline --decorate'
alias gt='git tag'
alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias gsl='git stash list'
alias gss='git stash save'

alias l='ls -1F'
alias ls='ls -FG'
alias ll='ls -alFhtr'
alias la='ls -A'

alias ta='tree' # 'all' tree
alias tda='tree -d'  # 'all' directory tree
alias td='tree -d -L 1'
alias tdd='tree -d -L 2'
alias td2='tree -d -L 2'
alias tddd='tree -d -L 3'
alias td3='tree -d -L 3'
alias t1='tree -L 1'
alias t2='tree -L 2'
alias t3='tree -L 3'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport'
