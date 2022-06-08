install="sudo pacman -S --needed"

cd ~/Repositories
$install git
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si
sudo rm -r yay

$install i3-gaps kitty rofi dunst flameshot feh ranger bluez bluez-utils pulseaudio ttf-hack ttf-fira-code ttf-dejavu noto-fonts noto-fonts-cjk noto-fonts-emoji
yay -S gomuks gotop polybar

mkdir ~/.config/i3
mkdir ~/.config/polybar
mkdir ~/.config/kitty

cd ~/Repositories/dotfiles/basic-i3
cp -r -v config/* ~/.config
cp -r -v home/. ~/.

while true; do
    read -p "Do you want HiDPI? " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) rm ~/.Xresources; break;;
        * ) echo "Please answer yes or no.";;
    esac
done

