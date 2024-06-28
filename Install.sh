cd 
echo "click allow"
termux-setup-storage
echo "instaling package"
apt update &> /dev/null
apt -y  -o Dpkg::Options::="--force-confdef" upgrade &> /dev/null
apt install p7zip wget -y &> /dev/null
apt install x11-repo -y &> /dev/null
apt install termux-x11-nightly -y &> /dev/null
apt install virglrenderer-android -y &> /dev/null
apt install pulseaudio -y &> /dev/null

echo 'pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1' >> .bashrc
echo "termux-x11 &> /dev/null & bash Winedroid.sh" >> $PREFIX/bin/winedroid
chmod +x $PREFIX/bin/winedroid
winedroid
clear
echo "start the winedroid type winedroid and enter"
source .bashrc
