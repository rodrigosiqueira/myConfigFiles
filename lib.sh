function detect_distro()
{
  local root_path="$1"
  local str_check="$2"
  local distro_id='none'
  local etc_path
  declare -a debian_family=('debian' 'ubuntu' 'raspbian')
  declare -a arch_family=('arch' 'manjaro')
  declare -a fedora_family=('fedora')

  etc_path=$(join_path "$root_path" /etc)

  if [[ -n "$str_check" ]]; then
    distro_id="$str_check"
  elif [[ -d $etc_path ]]; then
    distro_id=$(cat "$etc_path"/*-release | grep -w ID | cut -d = -f 2)
  fi

  # Debian family
  if [[ "${debian_family[*]}" =~ ${distro_id} ]]; then
    printf '%s\n' 'debian'
  # ArchLinux family
  elif [[ "${arch_family[*]}" =~ ${distro_id} ]]; then
    printf '%s\n' 'arch'
  # Fedora family
  elif [[ "${fedora_family[*]}" =~ ${distro_id} ]]; then
    printf '%s\n' 'fedora'
  else
    printf '%s\n' 'none'
  fi
}

function join_path()
{
  local target_path=$1
  local member=$2
  local joined

  # TODO: Extended pattern matching. We should consider to use it as a default
  # in this project.
  shopt -s extglob
  member=${member%%+(/)}
  member=${member##+(/)}

  joined="${target_path%%+(/)}/$member"

  printf '%s\n' "$joined" | tr -s '/'
}

function install_packages()
{
  local -n list="$1"
  local package_manager_cmd="$2"

  printf -v list_str '%s ' "${list[@]}"

  eval "${package_manager_cmd} ${list_str}"
}
