declare -a debian_packages=(
  'neomutt'
)

declare -a arch_packages=(
  'neomutt'
  'gnutls-bin'
  'libsasl2-dev'
)

install_packages "${TARGET_DISTRO}"_packages "${PACKAGE_MANAGER}"

cp -r neomutt/configs ~/.mutt

## TODO: Criar pasta: ~/.cache/mutt-bodies
