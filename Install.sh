cd 
echo "click allow"
termux-setup-storage
echo "instaling package"
apt update &> /dev/null
apt -y  -o Dpkg::Options::="--force-confdef" upgrade &> /dev/null
apt install p7zip wget -y &> /dev/null
apt install x11-repo tur-repo -y &> /dev/null
apt install termux-x11-nightly -y &> /dev/null
apt install virglrenderer-android -y &> /dev/null
apt install pulseaudio mesa-zink virglrenderer-mesa-zink vulkan-loader-android virglrenderer -y &> /dev/null
mkdir -p $PREFIX/glibc
cd $PREFIX/glibc
wget https://raw.githubusercontent.com/Terwine9090/Winedroid/main/sync-package &> /dev/null
source sync-package
wget https://raw.githubusercontent.com/Terwine9090/Winedroid/main/winedroid 
cp winedroid $PREFIX/bin
chmod +x $PREFIX/bin/winedroid
echo 'pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1' >> .bashrc
clear
echo "start the winedroid type winedroid and enter"
source .bashrc
