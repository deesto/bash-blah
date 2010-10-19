## auto-launch SSH Agent:
 if [ -f ~/.ssh/agent.sh ]; then
      . ~/.ssh/agent.sh
 fi
# new afs loader:
 if [ -f ~/.afs/afs.sh ]; then
      . ~/.afs/afs.sh
 fi

## try and get iTerm to run X11 stuff:
#case "$TERM_PROGRAM" in
#  iTerm.app|Apple*)
#    if [ "$DISPLAY" = "" ]; then
#       DISPLAY=:0.0; export DISPLAY
#    fi
#    ;;
#esac


# change bash prompt to add color and display host/path:
export PS1='\n\e[1;30m[\j:\!\e[1;30m]\e[0;36m \T \d \e[1;30m[\e[1;34m\u@\H\e[1;30m:\e[0;37m`tty 2>/dev/null` \e[0;32m+${SHLVL}\e[1;30m] \e[1;37m\w\e[0;37m\[\033]0;[ ${H1}... ] \w - \u@\H +$SHLVL @`tty 2>/dev/null` - [ `uptime` ]\007\]\n\[\]\$ '

# source my aliases file:
source ~/.aliases_bash

# Fink install paths
test -r /sw/bin/init.sh && . /sw/bin/init.sh

# MacPorts and Oracle Instant Client install paths
export PATH=/opt/local/lib/oracle:${PATH}
export SQLPATH=/opt/local/lib/oracle:${SQLPATH}
export DYLD_LIBRARY_PATH=/opt/local/lib/oracle:${DYLD_LIBRARY_PATH}

# Set proxy URL/port for BNL internal firewall:
export http_proxy=http://192.168.1.140:3128
export HTTP_PROXY=http://192.168.1.140:3128
export https_proxy=http://192.168.1.140:3128
export HTTPS_PROXY=http://192.168.1.140:3128

# possible fix for locale feedback in terminals form other servers:
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# MacPorts Installer addition on 2010-03-01_at_10:49:39: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
#
# fortune!
 if [ -f /opt/local/bin/fortune ]; 
   then /opt/local/bin/fortune
 fi
#
