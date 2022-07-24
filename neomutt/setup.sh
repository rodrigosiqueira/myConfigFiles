declare -a debian_packages=(
  'neomutt'
)

declare -a arch_packages=(
  'neomutt'
)

install_packages "${TARGET_DISTRO}"_packages "${PACKAGE_MANAGER}"

cp -r neomutt/configs ~/.mutt
