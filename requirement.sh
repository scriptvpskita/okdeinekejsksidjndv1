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

cd /usr/bin
wget -q -O menu2 "https://raw.githubusercontent.com/$repogithub/menu2.sh"
wget -q -O del-exp "https://raw.githubusercontent.com/$repogithub/del-exp.sh"
wget -q -O menu "https://raw.githubusercontent.com/$repogithub/menu.sh"
wget -q -O menu-l2tp "https://raw.githubusercontent.com/$repogithub/menu-l2tp.sh"
wget -q -O menu-ss "https://raw.githubusercontent.com/$repogithub/menu-ss.sh"
wget -q -O menu-ssh "https://raw.githubusercontent.com/$repogithub/menu-ssh.sh"
wget -q -O menu-tr "https://raw.githubusercontent.com/$repogithub/menu-tr.sh"
wget -q -O menu-trgrpc "https://raw.githubusercontent.com/$repogithub/menu-trgrpc.sh"
wget -q -O menu-trws "https://raw.githubusercontent.com/$repogithub/menu-trws.sh"
wget -q -O menu-vless "https://raw.githubusercontent.com/$repogithub/menu-vless.sh"
wget -q -O menu-vlessgrpc "https://raw.githubusercontent.com/$repogithub/menu-vlessgrpc.sh"
wget -q -O menu-vlessxtls "https://raw.githubusercontent.com/$repogithub/menu-vlessxtls.sh"
wget -q -O menu-vmess "https://raw.githubusercontent.com/$repogithub/menu-vmess.sh"
wget -q -O menu-vmessgrpc "https://raw.githubusercontent.com/$repogithub/menu-vmessgrpc.sh"
wget -q -O menu-vmesstcp "https://raw.githubusercontent.com/$repogithub/menu-vmesstcp.sh"
wget -q -O add-ssh "https://raw.githubusercontent.com/$repogithub/add-ssh.sh"
wget -q -O trial-ssh "https://raw.githubusercontent.com/$repogithub/trial-ssh.sh"
wget -q -O add-vlessxtls "https://raw.githubusercontent.com/$repogithub/add-vlessxtls.sh"
wget -q -O trial-vlessxtls "https://raw.githubusercontent.com/$repogithub/trial-vlessxtls.sh"
wget -q -O add-vmess "https://raw.githubusercontent.com/$repogithub/add-vmess.sh"
wget -q -O trial-vmess "https://raw.githubusercontent.com/$repogithub/trial-vmess.sh"
wget -q -O add-vless "https://raw.githubusercontent.com/$repogithub/add-vless.sh"
wget -q -O trial-vless "https://raw.githubusercontent.com/$repogithub/trial-vless.sh"
wget -q -O add-vmesstcp "https://raw.githubusercontent.com/$repogithub/add-vmesstcp.sh"
wget -q -O trial-vmesstcp "https://raw.githubusercontent.com/$repogithub/trial-vmesstcp.sh"
wget -q -O add-tr "https://raw.githubusercontent.com/$repogithub/add-tr.sh"
wget -q -O trial-tr "https://raw.githubusercontent.com/$repogithub/trial-tr.sh"
wget -q -O add-trws "https://raw.githubusercontent.com/$repogithub/add-trws.sh"
#wget -q -O trial-trws "https://raw.githubusercontent.com/$repogithub/trial-trws.sh"
wget -q -O add-ss "https://raw.githubusercontent.com/$repogithub/add-ss.sh"
#wget -q -O trial-ss "https://raw.githubusercontent.com/$repogithub/trial-ss.sh"
wget -q -O clear-log "https://raw.githubusercontent.com/$repogithub/clear-log.sh"
wget -q -O cek-tls "https://raw.githubusercontent.com/$repogithub/cek-tls.sh"
wget -q -O cek-ntls "https://raw.githubusercontent.com/$repogithub/cek-ntls.sh"
wget -q -O change-port "https://raw.githubusercontent.com/$repogithub/change-port.sh"
wget -q -O force-host "https://raw.githubusercontent.com/$repogithub/force-host.sh"
wget -q -O backup-bot "https://raw.githubusercontent.com/$repogithub/backup-bot.sh"
wget -q -O bckp-bot "https://raw.githubusercontent.com/$repogithub/bckp-bot.sh"
wget -q -O tool-enc "https://raw.githubusercontent.com/$repogithub/tool-enc.sh"
wget -q -O traffic-xraytls "https://raw.githubusercontent.com/$repogithub/traffic-xraytls.sh"
wget -q -O traffic-xrayntls "https://raw.githubusercontent.com/$repogithub/traffic-xrayntls.sh"
wget -q -O update-kernel "https://raw.githubusercontent.com/$repogithub/update-kernel.sh"
wget -q -O fix-kernel-cloud "https://raw.githubusercontent.com/$repogithub/fix-kernel-cloud.sh"
wget -q -O auto-sendvpn "https://raw.githubusercontent.com/$repogithub/auto-sendvpn.sh"
wget -q -O auto-sendall "https://raw.githubusercontent.com/$repogithub/auto-sendall.sh"
wget -q -O add-l2tp "https://raw.githubusercontent.com/$repogithub/add-l2tp.sh"
wget -q -O del-l2tp "https://raw.githubusercontent.com/$repogithub/del-l2tp.sh"
wget -q -O del-tr "https://raw.githubusercontent.com/$repogithub/del-tr.sh"
wget -q -O del-trws "https://raw.githubusercontent.com/$repogithub/del-trws.sh"
wget -q -O del-vless "https://raw.githubusercontent.com/$repogithub/del-vless.sh"
wget -q -O del-vlessxtls "https://raw.githubusercontent.com/$repogithub/del-vlessxtls.sh"
wget -q -O del-vmess "https://raw.githubusercontent.com/$repogithub/del-vmess.sh"
wget -q -O del-vmesstcp "https://raw.githubusercontent.com/$repogithub/del-vmesstcp.sh"
wget -q -O del-ss "https://raw.githubusercontent.com/$repogithub/del-ss.sh"
wget -q -O detail-tr "https://raw.githubusercontent.com/$repogithub/detail-tr.sh"
wget -q -O detail-trws "https://raw.githubusercontent.com/$repogithub/detail-trws.sh"
wget -q -O detail-vless "https://raw.githubusercontent.com/$repogithub/detail-vless.sh"
wget -q -O detail-vlessxtls "https://raw.githubusercontent.com/$repogithub/detail-vlessxtls.sh"
wget -q -O detail-vmess "https://raw.githubusercontent.com/$repogithub/detail-vmess.sh"
wget -q -O detail-vmesstcp "https://raw.githubusercontent.com/$repogithub/detail-vmesstcp.sh"
wget -q -O detail-ss "https://raw.githubusercontent.com/$repogithub/detail-ss.sh"
wget -q -O detail-vmessgrpc "https://raw.githubusercontent.com/$repogithub/detail-vmessgrpc.sh"
wget -q -O detail-vlessgrpc "https://raw.githubusercontent.com/$repogithub/detail-vlessgrpc.sh"
wget -q -O detail-trgrpc "https://raw.githubusercontent.com/$repogithub/detail-trgrpc.sh"
wget -q -O renew-l2tp "https://raw.githubusercontent.com/$repogithub/renew-l2tp.sh"
wget -q -O renew-tr "https://raw.githubusercontent.com/$repogithub/renew-tr.sh"
wget -q -O renew-trws "https://raw.githubusercontent.com/$repogithub/renew-trws.sh"
wget -q -O renew-vless "https://raw.githubusercontent.com/$repogithub/renew-vless.sh"
wget -q -O renew-vlessxtls "https://raw.githubusercontent.com/$repogithub/renew-vlessxtls.sh"
wget -q -O renew-vmess "https://raw.githubusercontent.com/$repogithub/renew-vmess.sh"
wget -q -O renew-vmesstcp "https://raw.githubusercontent.com/$repogithub/renew-vmesstcp.sh"
wget -q -O renew-ss "https://raw.githubusercontent.com/$repogithub/renew-ss.sh"
wget -q -O restart "https://raw.githubusercontent.com/$repogithub/restart.sh"
wget -q -O auto-certxray "https://raw.githubusercontent.com/$repogithub/auto-certxray.sh"
wget -q -O update-version "https://raw.githubusercontent.com/$repogithub/update-version.sh"
wget -q -O path-ss "https://raw.githubusercontent.com/$repogithub/path-ss.sh"
wget -q -O path-trws "https://raw.githubusercontent.com/$repogithub/path-trws.sh"
wget -q -O path-vless "https://raw.githubusercontent.com/$repogithub/path-vless.sh"
wget -q -O path-vmess "https://raw.githubusercontent.com/$repogithub/path-vmess.sh"
wget -q -O path-vmesstcp "https://raw.githubusercontent.com/$repogithub/path-vmesstcp.sh"
wget -q -O path-vmessgrpc "https://raw.githubusercontent.com/$repogithub/path-vmessgrpc.sh"
wget -q -O path-vlessgrpc "https://raw.githubusercontent.com/$repogithub/path-vlessgrpc.sh"
wget -q -O path-trgrpc "https://raw.githubusercontent.com/$repogithub/path-trgrpc.sh"
wget -q -O change-uuid-tr "https://raw.githubusercontent.com/$repogithub/change-uuid-tr.sh"
wget -q -O change-uuid-trws "https://raw.githubusercontent.com/$repogithub/change-uuid-trws.sh"
wget -q -O change-uuid-vless "https://raw.githubusercontent.com/$repogithub/change-uuid-vless.sh"
wget -q -O change-uuid-vlessxtls "https://raw.githubusercontent.com/$repogithub/change-uuid-vlessxtls.sh"
wget -q -O change-uuid-vmess "https://raw.githubusercontent.com/$repogithub/change-uuid-vmess.sh"
wget -q -O change-uuid-vmesstcp "https://raw.githubusercontent.com/$repogithub/change-uuid-vmesstcp.sh"
wget -q -O disane "https://raw.githubusercontent.com/$repogithub/disable-enable-service.sh"
#wget -q -O tr-to-clash "https://raw.githubusercontent.com/$repogithub/trojan-to-clash.sh"
#wget -q -O trws-to-clash "https://raw.githubusercontent.com/$repogithub/trojanws-to-clash.sh"
#wget -q -O vless-to-clash "https://raw.githubusercontent.com/$repogithub/vless-to-clash.sh"
#wget -q -O vlessxtls-to-clash "https://raw.githubusercontent.com/$repogithub/vlessxtls-to-clash.sh"
#wget -q -O vmess-to-clash "https://raw.githubusercontent.com/$repogithub/vmess-to-clash.sh"
#wget -q -O vmesstcp-to-clash "https://raw.githubusercontent.com/$repogithub/vmesstcp-to-clash.sh"
wget -q -O add-vmessgrpc "https://raw.githubusercontent.com/$repogithub/add-vmessgrpc.sh"
wget -q -O renew-vmessgrpc "https://raw.githubusercontent.com/$repogithub/renew-vmessgrpc.sh"
wget -q -O del-vmessgrpc "https://raw.githubusercontent.com/$repogithub/del-vmessgrpc.sh"
wget -q -O add-vlessgrpc "https://raw.githubusercontent.com/$repogithub/add-vlessgrpc.sh"
wget -q -O del-vlessgrpc "https://raw.githubusercontent.com/$repogithub/del-vlessgrpc.sh"
wget -q -O renew-vlessgrpc "https://raw.githubusercontent.com/$repogithub/renew-vlessgrpc.sh"
wget -q -O add-trgrpc "https://raw.githubusercontent.com/$repogithub/add-trgrpc.sh"
wget -q -O del-trgrpc "https://raw.githubusercontent.com/$repogithub/del-trgrpc.sh"
wget -q -O renew-trgrpc "https://raw.githubusercontent.com/$repogithub/renew-trgrpc.sh"
wget -q -O menu-bundling "https://raw.githubusercontent.com/$repogithub/menu-bundling.sh"
wget -q -O bundling-vmess "https://raw.githubusercontent.com/$repogithub/bundling-vmess.sh"
wget -q -O bundling-vless "https://raw.githubusercontent.com/$repogithub/bundling-vless.sh"
wget -q -O bundling-tr "https://raw.githubusercontent.com/$repogithub/bundling-tr.sh"
chmod +x menu-l2tp
chmod +x menu-ss
chmod +x menu-ssh
chmod +x menu-tr
chmod +x menu-trgrpc
chmod +x menu-trws
chmod +x menu-vless
chmod +x menu-vlessgrpc
chmod +x menu-vlessxtls
chmod +x menu-vmess
chmod +x menu-vmessgrpc
chmod +x menu-vmesstcp
chmod +x add-vlessxtls
chmod +x trial-vlessxtls
chmod +x add-vmess
chmod +x trial-vmess
chmod +x add-vless
chmod +x trial-vless
chmod +x add-vmesstcp
chmod +x trial-vmesstcp
chmod +x add-tr
chmod +x trial-tr
chmod +x add-trws
chmod +x trial-trws
chmod +x add-ss
chmod +x trial-ss
chmod +x clear-log
chmod +x cek-tls
chmod +x cek-ntls
chmod +x change-port
chmod +x menu2
chmod +x menu
chmod +x add-ssh
chmod +x trial-ssh
chmod +x force-host
chmod +x del-exp
chmod +x backup-bot
chmod +x bckp-bot
chmod +x tool-enc
chmod 755 traffic-xraytls
chmod 755 traffic-xrayntls
chmod +x traffic-xraytls
chmod +x traffic-xrayntls
chmod +x update-kernel
chmod +x fix-kernel-cloud
chmod +x auto-sendvpn
chmod +x auto-sendall
chmod +x del-tr
chmod +x del-trws
chmod +x del-vless
chmod +x del-vlessxtls
chmod +x del-vmess
chmod +x del-vmesstcp
chmod +x del-ss
chmod +x detail-tr
chmod +x detail-trws
chmod +x detail-vless
chmod +x detail-vlessxtls
chmod +x detail-vmess
chmod +x detail-vmesstcp
chmod +x detail-ss
chmod +x detail-vmessgrpc
chmod +x detail-vlessgrpc
chmod +x detail-trgrpc
chmod +x add-l2tp
chmod +x renew-l2tp
chmod +x renew-tr
chmod +x renew-trws
chmod +x renew-vless
chmod +x renew-vlessxtls
chmod +x renew-vmess
chmod +x renew-vmesstcp
chmod +x renew-ss
chmod +x restart
chmod +x auto-certxray
chmod +x path-ss
chmod +x path-trws
chmod +x path-vless
chmod +x path-vmess
chmod +x path-vmesstcp
chmod +x path-vmessgrpc
chmod +x path-vlessgrpc 
chmod +x path-trgrpc 
chmod +x change-uuid-tr
chmod +x change-uuid-trws
chmod +x change-uuid-vless
chmod +x change-uuid-vlessxtls
chmod +x change-uuid-vmess
chmod +x change-uuid-vmesstcp
chmod +x update-version
chmod +x disane
chmod +x tr-to-clash
chmod +x trws-to-clash
chmod +x vless-to-clash
chmod +x vlessxtls-to-clash
chmod +x vmess-to-clash
chmod +x vmesstcp-to-clash
chmod +x add-vmessgrpc
chmod +x renew-vmessgrpc
chmod +x del-vmessgrpc
chmod +x add-vlessgrpc
chmod +x del-vlessgrpc
chmod +x renew-vlessgrpc
chmod +x add-trgrpc
chmod +x del-trgrpc
chmod +x renew-trgrpc
chmod +x menu-bundling
chmod +x bundling-vmess
chmod +x bundling-vless
chmod +x bundling-tr