#
# ~/.bashrc
#

# My laziness stuffs
R="$HOME/Documents/Repositories/"

Rk="$HOME/Documents/Repositories/kernels"
Rdrm="$Rk/drm/drm-misc/"

Rf="$HOME/Documents/Repositories/freedesktop"
Rigt="$Rf/igt-gpu-tools"
Rlibdrm="$Rf/libdrm"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Tools alias
alias ls='ls --color=auto'
alias grep='grep --color'
alias feh='feh --scale-down'
alias mpg123b='screen mpg123 -o pulse -z'

# Useful alias
alias kernel-test='[ -d "/usr/lib/modules/$(uname -r)" ] || echo "Kernel has been updated. Please reboot."'

# Bash color
PS1='[$?,\j][\D{%T}]\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] '
PS1+='\[\e[1;32m\]\[\e[0;33m\]$(__git_ps1 "[%s]")\n\[\e[1;32m\]'
PS1+='\$\[\e[m\] \[\e[0;37m\]'

# Miscellaneous export variables
export HISTTIMEFORMAT='%F %T '
export HISTCONTROL=erasedups
