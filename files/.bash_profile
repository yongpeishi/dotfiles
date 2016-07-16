export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export EDITOR=vim

alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias stree='open -a SourceTree .'

# sublime symlink
# ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# postgres
alias psqlstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias psqlstop='pg_ctl -D /usr/local/var/postgres stop'
#protgresapp
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

#JAVA
export JAVA_HOME=$(/usr/libexec/java_home)
export JUNIT_HOME="$HOME/java"
export PATH="$PATH:$JUNIT_HOME"
export CLASSPATH="$CLASSPATH:$JUNIT_HOME/junit-4.12.jar:$JUNIT_HOME/hamcrest-core-1.3.jar"

# chruby
if [[ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  source /usr/local/opt/chruby/share/chruby/auto.sh
else
  echo "Ain't got no chruby"
fi

# git-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\u \w\[\033[32m\]$(__git_ps1)\[\033[00m\] $ '
