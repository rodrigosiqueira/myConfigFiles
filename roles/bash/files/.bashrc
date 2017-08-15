#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Tools alias
alias ls='ls --color=auto'
alias feh='feh --scale-down'

# Useful alias
alias kernel-test='[ -d "/usr/lib/modules/$(uname -r)" ] || echo "Kernel has been updated. Please reboot."'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Beep
source ~/.config/beep/beep.sh
source ~/.config/flex_template/flex_template.sh

# git shell
source ~/.config/git-prompt.sh
source ~/.config/git-completion.bash

# Bash color
PS1='[$?,\j]\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] '
PS1+='\[\e[1;32m\]\[\e[0;33m\]$(__git_ps1 "[%s]")\n\[\e[1;32m\]'
PS1+='\$\[\e[m\] \[\e[0;37m\]'

# VGA screen
alias expand-to-vga="xrandr --output VGA-0 --auto --right-of LVDS-0"
alias mirror-to-vga="xrandr --output VGA-0 --auto --same-as LVDS-0"
alias vga-off="xrandr --output VGA-0 --off"

# Miscellaneous export variables
export HISTTIMEFORMAT='%F %T '
export HISTCONTROL=erasedups
