# Global setup
git config --global user.name 'Rodrigo Siqueira'
git config --global user.email 'siqueirajordao@riseup.net'
git config --global core.editor vim

# Autocomplete
if [[ "${TARGET_DISTRO}" == 'arch' ]]; then
  printf '# Git magic\n' >> ~/.bashrc
  printf 'source /usr/share/git/completion/git-completion.bash\n' >> ~/.bashrc
  printf 'source /usr/share/git/completion/git-prompt.sh\n' >> ~/.bashrc
elif [[ "${TARGET_DISTRO}" == 'debian' ]]; then
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.config/git-completion.bash
  echo "[ -f ~/.config/git-completion.bash ] && . ~/.config/git-completion.bash" >> ~/.bashrc
fi
