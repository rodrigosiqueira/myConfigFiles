# Install required packages
declare -a debian_packages=(
 'yubikey-manager'
 'yubikey-personalization'
 'libpam-yubico'
 'libpam-u2f'
)

declare -a arch_packages=(
 'yubikey-manager'
 'yubikey-personalization'
 'yubico-pam'
 'pam-u2f'
)

install_packages "${TARGET_DISTRO}"_packages "${PACKAGE_MANAGER}"
