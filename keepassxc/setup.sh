# Install required packages
declare -a debian_packages=(
 'keepassxc'
)

install_packages "${TARGET_DISTRO}"_packages "${PACKAGE_MANAGER}"
