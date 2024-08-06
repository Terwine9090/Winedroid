cd 
echo "click allow"
termux-setup-storage
echo "instaling package"
apt update &> /dev/null
apt -y  -o Dpkg::Options::="--force-confdef" upgrade &> /dev/null
apt install p7zip wget cabextract -y &> /dev/null
apt install x11-repo -y &> /dev/null
apt install termux-x11-nightly -y &> /dev/null
apt install virglrenderer-android zenity -y &> /dev/null
apt install pulseaudio virglrenderer vulkan-loader-android -y &> /dev/null
apt install xfce4*
mkdir -p $PREFIX/glibc
cd $PREFIX/glibc
wget https://raw.githubusercontent.com/Terwine9090/Winedroid/main/sync-package &> /dev/null
source sync-package
wget https://raw.githubusercontent.com/Terwine9090/Winedroid/main/winedroid &> /dev/null
mv winedroid $PREFIX/bin
chmod +x $PREFIX/bin/winedroid
7z x $PREFIX/glibc/opt/windows10.7z -o$HOME
echo "start the winedroid type winedroid and enter"

