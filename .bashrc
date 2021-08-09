# ~/.bashrc

# DEFAULT APPS

export EDITOR=vim
export VISUAL=vim
## Ruby
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

# PROMPT

PS1='\[\e[1;36m\]\h \[\e[1;32m\]\w \[\e[1;37m\]'

# SETTINGS

stty -ixon # Disable start/stop output control
[[ $- != *i* ]] && return # If not running interactively, don't do anything

# FUNCTIONS

## Push to and pull from remote host.
## First argument is remote host name, second is path to file.
push() { scp "$2" "$1":"$2"; }
pull() { scp "$1":"$2" "$2"; }

# ALIASES

## System
alias ls='ls --color=auto'
alias fls='ranger'
alias packs='cd /var/cache/pacman/pkg'
alias config='vim /home/jrl/.config/i3/config'
alias suurus='du -hd 1 $1 | sort -h'
alias up="python3 -c 'import time,datetime;print(datetime.timedelta(seconds=time.clock_gettime(time.CLOCK_MONOTONIC)))'"
alias kettad='lsblk -o NAME,KNAME,PATH,FSUSED,FSAVAIL,FSSIZE,FSUSE%,FSTYPE,FSVER,MOUNTPOINT,LABEL,UUID'
alias explicit='comm -23 <(pacman -Qqett | sort | uniq) <(pacman -Qqg base -g base-devel | sort | uniq)'

## Time and weather
alias kalender='cal -m -3'
alias kell='tty-clock -c -C 6 -D -d 10'
alias ilm='curl wttr.in/tartu+estonia?1nq'
alias todo='todo.sh -canT'
alias aeg='Rscript ~/scrs/aeg.R'
alias timer='sh scrs/timer.sh start'

## Apps
alias tes='aiksaurus'
alias top='bpytop'
alias serve='bundle exec jekyll serve'
