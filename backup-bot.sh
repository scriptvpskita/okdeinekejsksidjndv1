#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
IP=$(curl -sS ipinfo.io/ip > /tmp/ipaddress.txt)
MYIP=$(cat /tmp/ipaddress.txt)

# cek wget & curl
if ! which wget > /dev/null; then
clear
echo -e "${red}Wah Mau Belajar Nakal Yah !${NC}"
sleep 2
exit 0
clear
else
echo "Wget is already installed"
fi

if ! which curl > /dev/null; then
clear
echo -e "${red}Wah Mau Belajar Nakal Yah !${NC}"
sleep 2
exit 0
clear
else
echo "curl is already installed"
fi

fileee=/usr/bin/wget
minimumsize=400000
actualsize=$(wc -c <"$fileee")
if [ $actualsize -ge $minimumsize ]; then
clear
echo -e "${green}Checking...${NC}"
else
clear
echo -e "${red}Permission Denied!${NC}";
echo "Reason : Modified Package To Bypass Sc"
exit 0
fi

fileeex=/usr/bin/curl
minimumsizex=15000
clear
actualsizex=$(wc -c <"$fileeex")
if [ $actualsizex -ge $minimumsizex ]; then
clear
echo -e "${green}Checking...${NC}"
else
clear
echo -e "${red}Permission Denied!${NC}";
echo "Reason : Modified Package To Bypass Sc"
exit 0
fi

# data server
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
repogithub='scriptvpskita/okdeinekejsksidjndv1/main'
repopermission='http://files.onevpn.us:8081/permission.txt'
repopermission2='https://www.vpnneo.com/d2lsbGlhbQ'
repopermission3='https://www.vpnneo.id/d2lsbGlhbQ'
curl -sS -H 'Cache-Control: no-cache, no-store' $repopermission | grep -w "$MYIP" > /tmp/logs.txt
Master1=$(cat /tmp/logs.txt)
if [ -z "$Master1" ]
then
curl -sS -H 'Cache-Control: no-cache, no-store' $repopermission2/$MYIP > /tmp/logs.txt
fi
Master2=$(cat /tmp/logs.txt)
if [ -z "$Master2" ]
then
curl -sS -H 'Cache-Control: no-cache, no-store' $repopermission3/$MYIP > /tmp/logs.txt
fi

# cek masa aktif
data=( `cat /tmp/logs.txt | grep -E "^### " | awk '{print $2}'` )
for user in "${data[@]}"
do
exp=( `grep -E "^### $data" "/tmp/logs.txt" | awk '{print $3}' | sort | uniq` )
d1=(`date -d "$exp" +%s`)
d2=(`date -d "$biji" +%s`)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
echo -e "${red}Script Expired !${NC}"
echo -e "Contact Admin : t.me/user_legend"
rm -rf /tmp/logs.txt
rm -rf /tmp/ipaddress.txt
exit 1
else
echo -e "${green}Script Active !${NC}"
clear
fi
done

# cek ip address
checkipaddres=( `grep -E "^### $data" "/tmp/logs.txt" | awk '{print $4}' | sort | uniq` )
if [[ "$MYIP" = "$checkipaddres" ]]; then
echo -e "${green}IP Address Accepted${NC}"
clear
else
echo -e "${red}IP Address Not Found In Our Database${NC}"
echo -e "Contact Admin : t.me/user_legend"
rm -rf /tmp/logs.txt
rm -rf /tmp/ipaddress.txt
exit 1
fi

# cek client name
clientname=$(cat /usr/local/etc/clientname)
checkclient=( `grep -E "^### $data" "/tmp/logs.txt" | awk '{print $2}' | sort | uniq` )
if [[ "$clientname" = "$checkclient" ]]; then
echo -e "${green}Client Name Accepted${NC}"
clear
else
echo -e "${red}Client Name Not Compatible !${NC}"
echo -e "Contact Admin : t.me/user_legend"
rm -rf /tmp/logs.txt
rm -rf /tmp/ipaddress.txt
exit 1
fi
rm -rf /tmp/logs.txt
rm -rf /tmp/ipaddress.txt
clear

Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[ON]${Font_color_suffix}"
Error="${Red_font_prefix}[OFF]${Font_color_suffix}"
cek=$(grep -c -E "^## BEGIN_Backup" /etc/crontab)
if [[ "$cek" = "1" ]]; then
sts="${Info}"
else
sts="${Error}"
fi
clear
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "   » Backup Data Via Telegram Bot «"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e " Status Autobackup Data Via Bot Is $sts"
echo -e "   [1]  Backup Data"
echo -e "   [2]  Change Api Bot & Chat ID"
echo -e "   [3]  Stop Autobackup Data"
echo -e "   [x]  Kembali Ke Menu"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
read -p "   Select From Options [1-3 or x] :  " prot
echo -e ""
case $prot in
1)
ips=$(curl -sS ipinfo.io/ip);
domain=$( cat /etc/xray/domain )
chatid=$(cat /home/chatid)
apibot=$(cat /home/apibot)
if [[ "$chatid" = "" ]]; then
echo "Please Enter Your Chat ID Group"
read -rp "Chat ID: " -e chatid
cat <<EOF>>/home/chatid
$chatid
EOF
fi
if [[ "$apibot" = "" ]]; then
echo "Please Enter Your Api Bot"
echo "Get Api Bot In @BotFather"
echo "Dont Forget To Added Your Bot To Your Group"
read -rp "Api Bot: " -e apibot
cat <<EOF>>/home/apibot
$apibot
EOF
fi
cek=$(grep -c -E "^## BEGIN_Backup" /etc/crontab)
if [[ "$cek" = "0" ]]; then
echo "Want To Make Bot Will AutoBackup Data User ?"
echo "Data Will Be Backed Up Automatically at 00:05 GMT +7 To Your Telegram Group"
read -p "Type Yes If Agree [yes/no]: " pilihan
	if [[ "$pilihan" = 'yes' ]]; then
cat << EOF >> /etc/crontab
## BEGIN_Backup
5 0 * * * root bckp-bot
## END_Backup
EOF
service cron restart
sleep 1
echo " Please Wait"
clear
echo " Autobackup Has Been Started"
echo " Data Will Be Backed Up Automatically at 00:05 GMT +7"
else
echo "oke maybe next time..."
fi
fi
rm -rf /home/vps/public_html/restore/
ips=$(curl -sS ipinfo.io/ip);
domain=$( cat /etc/v2ray/domain )
chatid=$(cat /home/chatid)
apibot=$(cat /home/apibot)
date=$(date +"%Y-%m-%d" | cut -d "-" -f 2-3);
date2=$(date +"%Y-%m-%d");
time=$(date +"%H:%M:%S" | cut -d ":" -f 1-2);
rm -f $ips-$date-$time.zip
rm -rf /root/backup
mkdir /root/backup
cd /root
cp /root/log-install.txt /root/backup/
cp /etc/passwd /root/backup
cp /etc/group /root/backup
cp /etc/shadow /root/backup
cp /etc/gshadow /root/backup
cp /etc/ppp/chap-secrets backup/chap-secrets
cp /etc/ipsec.d/passwd backup/passwd1
cp /usr/local/etc/xray/config.json backup/
cp /usr/local/etc/xray/none.json backup/
cp /usr/local/etc/xray/will69.json backup/
cp /usr/local/etc/xray/will666.json backup/
cp /etc/systemd/system/cdn.service backup/
cp -r /etc/william/ backup/william
cp -r /etc/william/slowdns backup/slowdns
cp -r /etc/ssl/private/ backup/private
cp -r /var/lib/premium-script/ backup/premium-script
cp -r /home/vps/public_html backup/public_html
cp -r /etc/xray/ backup/xray/
cp -r /etc/v2ray/ backup/v2ray/
cp -r /etc/nginx/conf.d/ backup/nginx/
cd /root
zip -r $ips-backup-data.zip backup > /dev/null 2>&1
curl -F chat_id="$chatid" -F document=@"$ips-backup-data.zip" -F caption="
Thank You For Using Our Service
━━━━━━━━━━━━━━━━━━━
Tanggal Backup : $date2
━━━━━━━━━━━━━━━━━━━
Your Domain : $domain
Your IP VPS  : $ips
━━━━━━━━━━━━━━━━━━━
Cara Restore ?
1. Forward File Ini Ke Bot Direct Link/Mirror Link @direct_link69_bot
2. Copy hasil restore ke menu restore di script william

Note: Mohon Dibaca
- Jangan Lupa Mengaktifkan Auto backup Bot Telegram Agar Data Selalu TerUpdate
- Gunakan Juga Backup Via Gmail Jika VPS Tidak Memblockir Port SMTP
- Password VPS Akan Mengikuti Dari Data Yang Di Restore
━━━━━━━━━━━━━━━━━━━" https://api.telegram.org/bot$apibot/sendDocument
rm -rf $ips-backup-data.zip
clear
echo "done, please cek your group telegram"
;;
2)
FILE=/home/apibot
if test -f "$FILE"; then
read -rp "Type Your New Api Bot: " -e apibot
cat > "/home/apibot" << EOF
$apibot
EOF
read -rp "Type Your New Chat ID Group: " -e chatid
cat > "/home/chatid" << EOF
$chatid
EOF
clear
echo "Succesfully Changed Api Bot & Chat ID Succesfully"
else
    echo "Api Bot & Chat ID Not Found, So Cannot To Change"
    exit 1
fi
;;
3)
sed -i "/^## BEGIN_Backup/,/^## END_Backup/d" /etc/crontab
clear
echo "Succesfully Stop Autobackup Data"
;;
x)
clear
menu
;;
*)
echo "Please enter an correct number"
;;
esac

