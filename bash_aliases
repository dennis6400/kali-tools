##
# Basic Aliases
##

# ls
alias l='ls'
alias ll='ls -l'
alias la='ls -al'
alias lt='ls -lt'
alias ltr='ls -ltr'
alias l1='ls -1'
#alias list='ls -lat|more' check

# ls with grep
alias llg='ls -l | grep'
alias lag='ls -la | grep'
alias ltg='ls -lt | grep'
alias ltrg='ls -ltr | grep'
alias l1g='ls -1 | grep'

# cd 
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# cd - Common Directories
alias cddoc='cd ~/Documents'
alias cddesk='cd ~/Desktop'
alias cddown='cd ~/Downloads'
alias cdssh='cd ~/.ssh'
alias cdopt='cd /opt'
alias cdtmp='cd /tmp'
alias cdlog='cd /var/log'

# shell history
alias h='history'
alias hg='history | grep'
alias ha='history -a'
alias hn='history -n'
alias hw='history -w'
alias hr='history -r'
alias ht='history | tail -40'

# log
alias tf='tail -f'

# environment
alias envg='env | grep'

## timestamps
alias curdate="date '+%Y-%m-%d_%H%M'"
alias curdate2="date '+%Y-%m-%d_%H%M%S'"

# ps (processes)
alias sps='ps -efad | grep'
alias pa='ps aux'
alias pag='ps aux | grep'

# netstat
alias ns='netstat -tulpen'
alias nsg='netstat -tulpen | grep'

# bash aliases (kali)
alias a='alias'
alias ag='alias | grep'
alias nalias='nano ~/.bash_aliases'
alias lalias='. ~/.bash_aliases'
alias balias='cp ~/.bash_aliases ~/.bash_aliases_$(date '+%Y-%m-%d_%H%M%S').bak'

# bash profile
alias nbash='nano ~/.bashrc'
alias nshell='nano ~/.bashrc'
alias lbash='. ~/.bashrc'
alias bbash='cp ~/.bashrc ~/.bashrc_$(date '+%Y-%m-%d_%H%M%S').bak'

# hosts file
alias nhosts='sudo nano /etc/hosts'
alias bhosts='sudo cp /etc/hosts /etc/hosts_$(date '+%Y-%m-%d_%H%M%S').bak'


##
# Apt
##
alias upd='sudo apt update'
alias upg='sudo apt upgrade -y'
alias updg='sudo apt update && sudo apt upgrade -y'
alias upcheck='sudo apt list --upgradable'
alias version='apt list | grep'
alias clean='sudo apt autoremove -y'


##
# Editors
##
alias n='nano'


##
# Git
##
alias g='git'


##
# Firefox
##
alias f='firefox'
alias fp='firefox --private-window'


##
# Curl
##

# check public ip
alias myip='curl ipinfo.io/ip'


##
# Python
##

# virtual environment
alias venv-create='virtualenv -p /usr/bin/python2.7 venv'
alias venv-create-3='virtualenv -p /usr/bin/python3 venv'
alias venv-activate='source venv/bin/activate'
