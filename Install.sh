cd 
echo "click allow"
termux-setup-storage
echo "instaling package"
apt update &> /dev/null
apt-get -y --with-new-pkgs -o Dpkg::Options::="--force-confdef" upgrade >/dev/null 2>&1
apt install proot wget -y &> /dev/null
apt install x11-repo -y &> /dev/null
apt install termux-x11-nightly -y &> /dev/null
apt install virglrenderer-android -y &> /dev/null
apt install pulseaudio -y &> /dev/null
echo "downloading rootfs"
wget -q --show-progress https://github.com/Terwine9090/Winedroid/releases/download/1.0.0/rootfs.tar.xz
echo "extract rootfs"
tar -xf rootfs.tar.xz
wget -q --show-progress https://raw.githubusercontent.com/Terwine9090/Winedroid/main/Winedroid.sh
cd
cd ubuntu/opt
wget https://github.com/Terwine9090/Winedroid/releases/download/1.0.0/files.tar.gz
tar -xf files.tar.gz
cd
echo 'pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1' >> .bashrc
echo "termux-x11 &> /dev/null & bash Winedroid.sh" >> $PREFIX/bin/winedroid
chmod +x $PREFIX/bin/winedroid
winedroid
clear
echo "start the winedroid type winedroid and enter"
source .bashrc
