echo "click allow"
termux-setup-storage
echo "run apt update"
apt update &> /dev/null
apt upgrade -y
echo "instaling package"
apt install proot wget -y &> /dev/null
apt install x11-repo -y &> /dev/null
apt install termux-x11-nightly -y &> /dev/null
apt install virglrenderer-android -y &> /dev/null
apt install pulseaudio -y &> /dev/null
wget https://github.com/Terwine9090/Winedroid/releases/download/1.0.0/rootfs.tar.xz
tar -xf rootfs.tar.xz
wget https://raw.githubusercontent.com/Terwine9090/Winedroid/main/Winedroid.sh
cd ubuntu/opt
tar -xf wine-9.3.tar.gz
mv wine-9.3 wine
cd
echo 'pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1' >> .bashrc
echo "termux-x11 &> /dev/null & bash Winedroid.sh" >> $PREFIX/bin/winedroid
chmod +x $PREFIX/bin/winedroid
clear
echo "start the winedroid type winedroid and enter"
source .bashrc
