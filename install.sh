apt update
apt install i3
apt install polybar
apt install feh
rm -rf ~/.config/polybar/
cp -r polybar ~/.config
echo installed polybar

rm ~/.config/i3/config/
cp config ~/.config/i3/
echo installed i3 config
cp wallpaper.png ~/.i3
feh --bg-scale $HOME/.i3/wallpaper.png
echo installed feh and loaded the wallpaper to ~/i3
