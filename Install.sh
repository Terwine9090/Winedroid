cd 
echo "click allow"
termux-setup-storage
echo "instaling package"
apt update &> /dev/null
apt -y  -o Dpkg::Options::="--force-confdef" upgrade
apt install proot wget -y &> /dev/null
apt install x11-repo -y &> /dev/null
apt install termux-x11-nightly -y &> /dev/null
apt install virglrenderer-android -y &> /dev/null
apt install pulseaudio -y &> /dev/null
if [ -e rootfs.tar.xz ];then
echo "rootfs is download"
else
echo "downloading rootfs"
wget -q --show-progress https://github.com/Terwine9090/Winedroid/releases/download/1.0.0/rootfs.tar.xz
fi
echo "extract rootfs"
tar -xf rootfs.tar.xz
wget -q --show-progress https://raw.githubusercontent.com/Terwine9090/Winedroid/main/Winedroid.sh
cd
cd ubuntu/opt
wget -q --show-progress https://github.com/Terwine9090/Winedroid/releases/download/1.0.0/patch.tar.xz
tar -xf patch.tar.xz
rm -rf patch.tar.xz
wget https://github.com/Terwine9090/Winedroid/releases/download/1.0.0/files.tar.gz &> /dev/null
tar -xf files.tar.gz
rm -rf files.tar.gz
cd
rm -rf rootfs.tar.xz
echo 'pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1' >> .bashrc
echo "termux-x11 &> /dev/null & bash Winedroid.sh" >> $PREFIX/bin/winedroid
chmod +x $PREFIX/bin/winedroid
winedroid
clear
echo "start the winedroid type winedroid and enter"
source .bashrc
