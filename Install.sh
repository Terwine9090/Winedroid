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
wget
