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

old=$(cat /etc/xray/path/vless_grpc_path)
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e " ${red}             ⇱ CHANGE PATH VLESS GRPC ⇲               ${NC}"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${green}ENGLISH${NC} :"
echo -e "Please Enter Path Starting With /"
echo -e "${red}WARNING !${NC} : Change The Path Will Make Your Previous Path Not Working"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e "${green}INDONESIA${NC} :"
echo -e "Masukin Path Diawali Dengan /"
echo -e "${red}PERINGATAN !${NC} : Mengubah Path Akan Mengakibatkan Path Sebelumnya Tidak Berfungsi"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Your Current Path : $old"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo -e "Please Enter A New Path For Vless GRPC"
read -p "New Path : " new
if [ -z $new ]; then
echo "Tolong Masukin Path Dengan Benar"
exit 0
fi
validChars="/"
if [[ $new != *["$validChars"]* ]]; then
    echo "Oke ✓"
    sleep 1
else
    echo "Tolong Jangan Menggunakan /"
    echo "Please Dont Using Path With /"
    exit 0
fi
cek="vless"
if [ "$new" = "$cek" ]; then
echo "tolong gunakan nama lain"
echo "please use another name"
exit 0
fi
validasipath=$(cat /etc/nginx/conf.d/alone.conf | grep -w "$new" | awk '{print $2}' | tr -d '/' | sort -u)
if [ "$new" == "$validasipath" ]; then
echo "path sudah digunakan"
echo "path already used"
exit 0
fi
sed -i "s#${old}#${new}#g" /etc/nginx/conf.d/alone.conf
sed -i "s#${old}#${new}#g" /usr/local/etc/xray/config.json
sed -i "s#${old}#${new}#g" /etc/xray/path/vless_grpc_path
echo -e ""
echo -e "Change Path Successfully !"
echo -e "Your Path Now Is $new"
sleep 1
echo "restart service xray & nginx"
sleep 1
systemctl restart xray
systemctl restart nginx
echo "DONE !"
sleep 2
clear