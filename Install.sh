cd 
echo "click allow"
termux-setup-storage
echo "instaling package"
apt update &> /dev/null
apt -y  -o Dpkg::Options::="--force-confdef" upgrade &> /dev/null
apt install p7zip wget cabextract -y &> /dev/null
apt install x11-repo tur-repo -y &> /dev/null
apt install termux-x11-nightly -y &> /dev/null
apt install virglrenderer-android zenity -y &> /dev/null
apt install pulseaudio virglrenderer vulkan-loader-android -y &> /dev/null
apt install firefox code-oss &> /dev/null
apt install xfce4* &> /dev/null
mkdir -p $PREFIX/glibc
cd $PREFIX/glibc
mkdir opt
echo "ety" >> opt/wpl
wget https://raw.githubusercontent.com/Terwine9090/Winedroid/main/sync-package &> /dev/null
source sync-package
wget https://raw.githubusercontent.com/Terwine9090/Winedroid/main/winedroid &> /dev/null
mv winedroid $PREFIX/bin
chmod +x $PREFIX/bin/winedroid
echo "start the winedroid type winedroid and enter"


