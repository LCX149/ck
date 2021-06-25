##
clear

if ! type node >/dev/null 2>&1; then
    echo '检测到node未安装，开始安装！';
#apt update && apt upgrade
apt install nodejs
echo "安装完毕，请再次执行一次本命令"
exit
else
    echo 'node 已安装，开始初始化';
fi

wget -P $PWD/ck/ https://ghproxy.com/https://raw.githubusercontent.com/LCX149/ck/main/87865.tar

tar -xvf $PWD/ck/87865.tar $/PWD/ck/

sed -i "3i alias ck='node $PWD/ck/cookie.js'" ~/.bashrc
source ~/.bashrc

echo "初始化完毕，输入：ck
并回车即可开始获取cookie"

rm az.sh
