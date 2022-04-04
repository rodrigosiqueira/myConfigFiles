REPOS="${HOME}/Documents/Repositories"

declare -a other_projects=(
  'https://github.com/webfolder/siqueira.tech'
  'https://github.com/rodrigosiqueira/myConfigFiles.git'
)

declare -a kw_repos=(
  'https://github.com/kworkflow/kworkflow.git'
  'https://github.com/kworkflow/blog.git'
  'https://github.com/kworkflow/miscellaneous.git'
)

declare -a kernel_repos=(
  'https://anongit.freedesktop.org/git/drm/drm-misc.git'
  'https://github.com/raspberrypi/linux.git'
)

declare -a freedesktop_repos=(
  'https://gitlab.freedesktop.org/mesa/drm'

)

function clone_project_to()
{
  local -n project_list="$1"
  local repo_path="$2"

  # Clone misc projects
  for repository in "${project_list[@]}"; do
    repo_name=$(basename "$repository")
    repo_name="${repo_name%%.*}"
 
    [[ -d "${repo_path}/${repo_name}" ]] && continue

    git -C "${repo_path}" clone "$repository"
  done
}

mkdir -p "${REPOS}"

# Clone other projects
clone_project_to other_projects "${REPOS}"

# Clone kw project
mkdir -p "${REPOS}/kw"
clone_project_to kw_repos "${REPOS}/kw"

# Clone kernel freedesktop
mkdir -p "${REPOS}/freedesktop"
clone_project_to freedesktop_repos "${REPOS}/freedesktop"

# Clone kernel projects
mkdir -p "${REPOS}/kernels"
clone_project_to kernel_repos "${REPOS}/kernels"
