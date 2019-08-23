#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Tools alias
alias ls='ls --color=auto'
alias grep='grep --color'

# Useful alias
alias kernel-test='[ -d "/usr/lib/modules/$(uname -r)" ] || echo "Kernel has been updated. Please reboot."'

# Bash color
PS1='\[\e[0;33m\]\u@TM@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] '
PS1+='\[\e[1;32m\]\[\e[0;33m\]\n\[\e[1;32m\]'
PS1+='TM>\[\e[m\] \[\e[0;37m\]'

# Miscellaneous export variables
export HISTTIMEFORMAT='%F %T '
export HISTCONTROL=erasedups
