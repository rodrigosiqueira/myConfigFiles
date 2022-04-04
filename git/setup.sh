# Global setup
git config --global user.name 'Rodrigo Siqueira'
git config --global user.email 'siqueirajordao@riseup.net'
git config --global core.editor vim

# Autocomplete
printf '# Git magic\n' >> ~/.bashrc
printf 'source /usr/share/git/completion/git-completion.bash\n' >> ~/.bashrc
printf 'source /usr/share/git/completion/git-prompt.sh\n' >> ~/.bashrc
