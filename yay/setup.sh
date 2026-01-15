current_folder="$PWD"

cd /tmp/

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd "$current_folder"
