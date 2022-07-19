# Install required packages
declare -a debian_packages=(
 'yubikey-manager'
 'yubikey-personalization'
 'libpam-yubico'
 'libpam-u2f'
)

install_packages "${TARGET_DISTRO}"_packages "${PACKAGE_MANAGER}"
