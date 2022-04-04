cp vim/.vimrc ~/.vimrc

echo
echo "vimrc installed into $HOME/.vimrc"
echo

mkdir -p ~/.vim/
rsync -vr vim/.vim/ ~/.vim

echo
echo "Vim plugins installed into $HOME/.vim/"
echo

font_dir="$HOME/.fonts"
mkdir -p "$font_dir"

rsync -vr vim/fonts/ "$font_dir"

# Reset font cache on Linux
if [[ -n `which fc-cache` ]]; then
  fc-cache -f "$font_dir"
fi

echo
echo "Fonts installed into $font_dir"
