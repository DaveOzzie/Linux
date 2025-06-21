# OZ BASH 2025-06-21

# INFO
# timedatectl set-timezone Australia/Sydney
# apt install duf

# wget -O .bashrc    https://raw.githubusercontent.com/DaveOzzie/Linux/main/bashrc.bash
# wget -O .dircolors https://raw.githubusercontent.com/DaveOzzie/Linux/main/dircolors.txt

# URLS
# vault 192.168.20.1

HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

export LS_OPTIONS=''
eval "$(dircolors)"
eval "$(dircolors ~/.dircolors)"

# aliases for multiple directory listing commands
alias l='ls --color=auto -CF'
alias la='ls -Alh'                # show hidden files
alias labc='ls -lap'              # alphabetical sort
alias las='ls -A'                 # Hidden Files
alias lc='ls -ltcrh'              # sort by change time
alias ldir="ls -l | egrep '^d'"   # directories only
alias lf="ls -l | egrep -v '^d'"  # files only
alias lk='ls -lSrh'               # sort by size
alias ll='ls -Fls'                # long listing format
alias lla='ls -Al'                # List and Hidden Files
alias lls='ls -l'                 # List
alias lm='ls -alh |more'          # pipe through 'more'
alias lr='ls -lRh'                # recursive ls
alias ls='ls -aFh --color=always' # add colors and file type extensions
alias lt='ls -ltrh'               # sort by date
alias lu='ls -lturh'              # sort by access time
alias lw='ls -xAh'                # wide listing format
alias lx='ls -lXBh'               # sort by extension

alias bashit='source ~/.bashrc'
alias bashed='nano ~/.bashrc'
alias bashup='wget -O .bashrc https://raw.githubusercontent.com/DaveOzzie/Linux/main/bashrc.bash'
alias colorup='wget -O .dircolors https://raw.githubusercontent.com/DaveOzzie/Linux/main/dircolors.txt'
alias dc='nano ~/.dircolors'

alias resolv='nano /etc/resolv.conf'

alias pingg='ping -c 3 google.com'
alias pingv='ping -c 3 192.168.20.1'

alias fstab='nano /etc/fstab'

alias sambav='smbclient -L 192.168.20.1'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias www='cd /var/www'

PS1='\[\033[01;33m\]\t-\u@\h \[\033[01;34m\]\w\[\033[00m\]\$'
PS1='\[\e[37m\]\!\[\e[0m\] \[\e[93m\]\t\[\e[0m\] \[\e[96m\]\u@\h\[\e[0m\] \[\e[92;1m\]\W\[\e[0m\]\$'

export TERM='xterm-256color'
