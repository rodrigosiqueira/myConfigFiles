# ArchLinux package names
declare -a arch_packages=(
  'rsync'
  'wget'
  'vim'
  'git'
  'htop'
  'konsole'
  'libreoffice-fresh'
  'okular'
  'zim'
  'openconnect'
  'screen'
  'pv'
  'bzip2'
  'lzip'
  'lzop'
  'zstd'
  'mpg123'
  'man'
  'man-db'
  'chromium'
  'firefox'
  'ntfs-3g'
  'gnupg'
  'bash-completion'
  'openconnect'
  # IGT
  'flex'
  'bison'
  'pkg-config'
  'libpciaccess'
  'kmod'
  'procps-ng'
  'libunwind'
  'libdwarf'
  'zlib'
  'xz'
  'cairo'
  'pixman'
  'libudev0-shim'
  'gsl'
  'alsa-lib'
  'xmlrpc-c'
  'json-c'
  'curl'
  'libxrandr'
  'libxv'
  'xorgproto'
  'python-docutils'
  'valgrind'
  'peg'
  'meson'
  'libdrm'
  'libtool'
  'make'
  'autoconf'
  'automake'
  'gtk-doc'
  'python-docutils'
  'sudo'
  'udev'
  'libelf'
  'libxext'
  'libx11'
  'linux-api-headers'
  'glib2'
  # Kernel packages
  'base-devel'
  'xmlto'
  'kmod'
  'inetutils'
  'bc'
  'libelf'
  'cpio'
  'perl'
  'tar'
  'xz'
)

declare -a debian_packages=(
  'rsync'
  'wget'
  'vim'
  'git'
  'htop'
  'konsole'
  'libreoffice'
  'okular'
  'zim'
  'openconnect'
  'screen'
  'pv'
  'bzip2'
  'lzip'
  'lzop'
  'zstd'
  'mpg123'
  'man'
  'man-db'
  'chromium'
  'firefox-esr'
  'ntfs-3g'
  'gnupg'
  'bash-completion'
  'openconnect'
  'thunderbird'
  'ruby-notify'
  # IGT
  'pkg-config'
  'x11proto-dri2-dev'
  'python3-docutils'
  'valgrind'
  'peg'
  'libpciaccess-dev'
  'libkmod-dev'
  'libprocps-dev'
  'libunwind-dev'
  'libdw-dev'
  'zlib1g-dev'
  'liblzma-dev'
  'libcairo-dev'
  'libpixman-1-dev'
  'libudev-dev'
  'libgsl-dev'
  'libasound2-dev'
  'libjson-c-dev'
  'libcurl4-openssl-dev'
  'libxrandr-dev'
  'libxv-dev'
  'meson'
  'libdrm-dev'
  'qemu-user'
  'qemu-user-static'
  # VMs
  'samba'
  'samba-common'
  'qemu-system-x86'
  # Kernel packages
  'build-essential'
  'xmlto'
  'kmod'
  'bison'
  'flex'
  'libssl-dev'
  'libncurses-dev'
  'dwarves'
  #'inetutils'
  'bc'
  'libelf-dev'
  'cpio'
  'perl'
  'tar'
  'xz-utils'
)

install_packages "${TARGET_DISTRO}"_packages "${PACKAGE_MANAGER}"
