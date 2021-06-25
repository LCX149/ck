##
clear
echo""

if ! type node >/dev/null 2>&1; then
    echo '检测到node未安装，开始安装！';
#apt update && apt upgrade
apt install nodejs
echo "安装完毕，请再次执行一次本命令"
exit
else
    echo 'node 已安装，开始初始化';
fi

wget -P /data/data/com.termux/files/home/storage/shared/ck/ https://ghproxy.com/https://raw.githubusercontent.com/LCX149/ck/main/87865.tar

tar -xvf /data/data/com.termux/files/home/storage/shared/ck/87865.tar -C /data/data/com.termux/files/home/storage/shared/ck/

sed -i "38i if test -f .bashrc;then source .bashrc;fi" /data/data/com.termux/files/usr/etc/profile
#sed -i "3i alias ck='node /data/data/com.termux/files/home/storage/shared/ck/cookie.js'" ~/.bashrc
echo "alias ck='node /data/data/com.termux/files/home/storage/shared/ck/cookie.js'" > ~/.bashrc
source ~/.bashrc

echo "初始化完毕，请重启软件后输入：ck
并回车即可开始获取cookie"

rm /data/data/com.termux/files/home/az.sh
