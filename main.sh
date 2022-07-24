. 'include.sh' --source-only

include 'lib.sh'

# Setup variables per distro target
export TARGET_DISTRO=$(detect_distro)
if [[ "$TARGET_DISTRO" == 'arch' ]]; then
  export PACKAGE_MANAGER='yes | sudo pacman -Syu --noconfirm '
else
  export PACKAGE_MANAGER='sudo apt install -y '
fi

# Keep in mind that the order metters here.

include 'packages/setup.sh'
include 'vim/setup.sh'
include 'yubi/setup.sh'
include 'keepassxc/setup.sh'
include 'bash/setup.sh'
include 'git/setup.sh'
include 'rvm/setup.sh'
include 'breeze/setup.sh'
include 'neomutt/setup.sh'

include 'repositories/setup.sh'
