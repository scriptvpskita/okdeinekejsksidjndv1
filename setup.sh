#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
IP=$(curl -sS ipinfo.io/ip > /tmp/ipaddress.txt)
MYIP=$(cat /tmp/ipaddress.txt)
repogithub='scriptvpskita/okdeinekejsksidjndv1/main'
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
apt install wget -y
apt install curl -y
apt install figlet -y
apt install lolcat -y
apt install dnsutils -y
source /etc/os-release
OS=$ID
if [[ $OS == 'debian' ]]; then
cp /usr/games/lolcat /usr/bin
fi
clear
apt install dnsutils -y

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
clear

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
rm -rf /root/setup.sh
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
rm -rf /root/setup.sh
exit 1
fi

clear
echo ""
echo "Please Enter Your Client name"
read -p "Client Name : " clientname
if [[ $clientname == "" ]]; then
echo -e "${red}Please Input Your Client Name !${NC}"
rm -rf setup.sh
exit 0
fi
mkdir -p /usr/local/etc/
touch /usr/local/etc/clientname
echo $clientname > /usr/local/etc/clientname
echo -e "Checking Client Name Please Wait...."
sleep 1

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
rm -rf /root/setup.sh
exit 1
fi
clear

figlet -f small -t "       WILLIAM" | lolcat
echo -e "     $red TELEGRAM $NC : t.me/user_legend"
echo -e "     $red FACEBOOK $NC : https://www.facebook.com/userlegend69"
echo -e "     $red GITHUB $NC   : https://github.com/willstore69/autoscript-aio"
echo ""
echo "==================================================="
echo "Jika Ingin Menggunakan Domain & NS Domain Sendiri Silahkan Diisi"
echo ""
echo "Jika Ingin Menggunakan Domain & NS Domain Dari Script Langsung Enter Aja"
echo "==================================================="
echo -e ""
read -p "Masukin Domain (biarkan kosong jika tidak punya) : " domen
read -p "Masukin NS Domain (biarkan kosong jika pengisian domain juga kosong) : " domens
mkdir /var/lib/premium-script;
mkdir -p /etc/xray/
mkdir -p /etc/v2ray/
mkdir -p /etc/ns/
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/ns/domain
echo "IP=$domen" > /var/lib/premium-script/ipvps.conf
echo $domen > /etc/xray/domain
echo $domen > /etc/v2ray/domain
echo $domens > /etc/ns/domain
apt install dnsutils -y
FILEEX=/etc/xray/domain
if [[ -z $(grep '[^[:space:]]' $FILEEX) ]] ; then
apt install -y socat
wget -q https://raw.githubusercontent.com/$repogithub/cf.sh && chmod +x cf.sh && ./cf.sh && rm -rf cf.sh
fi
sleep 3
apt install dnsutils -y
domainku=$(cat /etc/xray/domain)
echo "Your Domain Is $domainku"
echo -e "$green Starting..... $NC"
sleep 2
LOOKUP=$(nslookup "$domainku" | awk -F':' '/^Address: / { matched = 1 } matched { print $2}' | grep "$MYIP" | cut -d " " -f 2);
echo -e "$green Check Domain Is valid and pointed To IP Address $NC"
sleep 2
if [[ $MYIP = $LOOKUP ]]; then
echo -e "$green Domain is Valid ! $NC"
else
echo -e "$red UPS ! looks like the domain you entered is not valid"
echo -e "$red please recheck the domain you entered is correct"
echo -e "$red please point the domain to ip and try again $NC"
exit 0
fi 

# added directory
mkdir -p /etc/xray/
mkdir -p /etc/v2ray/
mkdir -p /etc/xray/vmess/
mkdir -p /etc/william/
touch /etc/xray/domain
touch /etc/v2ray/domain
mkdir -p /var/lib/premium-script/
touch /var/lib/premium-script/ipvps.conf
touch /etc/william/subscribe

hostnameku=$( cat /etc/xray/domain )
echo -e "Checking Certificate...."
mkdir -p /etc/ssl/private/
mkdir -p /etc/ssl/private/
touch /etc/ssl/private/fullchain.pem
touch /etc/ssl/private/privkey.pem
FILEEXX=/etc/ssl/private/fullchain.pem
if [[ -z $(grep '[^[:space:]]' $FILEEXX) ]] ; then
echo -e "${yellow}Certificate Not Found !${NC}"
echo -e "Starting Added Certificate Please wait..."
sleep 3
apt install -y socat
export ACME_USE_WGET=1
if ! [ -d /root/.acme.sh ];then curl https://get.acme.sh | sh;fi
~/.acme.sh/acme.sh --set-default-ca --server letsencrypt
~/.acme.sh/acme.sh --upgrade --auto-upgrade  && /root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
~/.acme.sh/acme.sh --issue -d $hostnameku --standalone --keylength ec-384 --force && ~/.acme.sh/acme.sh --install-cert -d $hostnameku --ecc --fullchain-file /etc/ssl/private/fullchain.pem --key-file /etc/ssl/private/privkey.pem
sleep 1
chown -R nobody:nogroup /etc/ssl/private/
chmod 777 /etc/ssl/private/
chmod +x /etc/ssl/private/fullchain.pem
chmod +x /etc/ssl/private/privkey.pem
else
echo -e "${green}Certificate Found ! skipped.${NC}"
fi
sleep 1
clear
# ssh vpn
wget -q https://raw.githubusercontent.com/$repogithub/setup-sshvpn.sh && chmod +x setup-sshvpn.sh && ./setup-sshvpn.sh && rm -rf setup-sshvpn.sh
clear
sleep 2
# backup
wget -q https://raw.githubusercontent.com/$repogithub/set-br.sh && chmod +x set-br.sh && ./set-br.sh && rm -rf set-br.sh
clear
sleep 2
# ssh ws ssl
wget -q https://raw.githubusercontent.com/$repogithub/ssh-ws-ssl.sh && chmod +x ssh-ws-ssl.sh && ./ssh-ws-ssl.sh && rm -rf ssh-ws-ssl.sh
clear
sleep 2
# sstp
wget -q https://raw.githubusercontent.com/$repogithub/sstp.sh && chmod +x sstp.sh && ./sstp.sh && rm -rf sstp.sh
clear
sleep 2
# wireguard
wget -q https://raw.githubusercontent.com/$repogithub/wireguard.sh && chmod +x wireguard.sh && ./wireguard.sh && rm -rf wireguard.sh
clear
sleep 2
# l2tp
wget -q https://raw.githubusercontent.com/$repogithub/only-l2tp.sh && chmod +x only-l2tp.sh && ./only-l2tp.sh && rm -rf only-l2tp.sh
clear
sleep 2
# Requirement
wget -q https://raw.githubusercontent.com/$repogithub/requirement.sh && chmod +x requirement.sh && ./requirement.sh && rm -rf requirement.sh
cd
sleep 3
cd /usr/bin
git clone https://github.com/willstore69/subfinders
sleep 1
cd subfinders
pip3 install -r requirements.txt
mv knockpy /usr/bin
mv ingfo /usr/bin
cd /usr/bin
rm -rf /usr/bin/subfinders
chmod +x ingfo
cd
rm -rf log-install.txt
apt install dnsutils -y
sleep 2
chown -R nobody:nogroup /etc/ssl/private/
chmod 777 /etc/ssl/private/
chmod +x /etc/ssl/private/fullchain.pem
chmod +x /etc/ssl/private/privkey.pem
systemctl restart xray
FILEEXX=/etc/ssl/private/fullchain.pem
if [[ -z $(grep '[^[:space:]]' $FILEEXX) ]] ; then
echo -e "${yellow}Certificate Not Found !${NC}"
echo -e "Starting Added Certificate Please wait..."
sleep 3
apt install -y socat
export ACME_USE_WGET=1
if ! [ -d /root/.acme.sh ];then curl https://get.acme.sh | sh;fi
~/.acme.sh/acme.sh --set-default-ca --server letsencrypt
~/.acme.sh/acme.sh --upgrade --auto-upgrade  && /root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
~/.acme.sh/acme.sh --issue -d $hostnameku --standalone --keylength ec-384 --force && ~/.acme.sh/acme.sh --install-cert -d $hostnameku --ecc --fullchain-file /etc/ssl/private/fullchain.pem --key-file /etc/ssl/private/privkey.pem
sleep 1
chown -R nobody:nogroup /etc/ssl/private/
chmod 777 /etc/ssl/private/
chmod +x /etc/ssl/private/fullchain.pem
chmod +x /etc/ssl/private/privkey.pem
else
echo -e "${green}Certificate Found ! skipped.${NC}"
fi
clear
echo " "
echo "Installation has been completed!!"
echo " "
echo "=================================- Premium -===================================="  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "--------------------------------------------------------------------------------"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - Webmin                  : 10000"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - OpenVPN TCP             : 1194"  | tee -a log-install.txt
echo "   - OpenVPN UDP             : 2200"  | tee -a log-install.txt
echo "   - OpenVPN SSL             : 442"  | tee -a log-install.txt
echo "   - OpenVPN WS              : 2095"  | tee -a log-install.txt
echo "   - Stunnel5                : 443, 777"  | tee -a log-install.txt
echo "   - SSHWS                   : 2052"  | tee -a log-install.txt
echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - XRAY TLS                : 443"  | tee -a log-install.txt
echo "   - VMNONE                  : 80"  | tee -a log-install.txt
echo "   - VLNONE                  : 8880"  | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN          : 1701"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Sesuai tkp"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Clear Log On            : Every 5 Hour"  | tee -a log-install.txt
echo "   - Auto Delete Expired Acc : 00.00 wib"  | tee -a log-install.txt
echo "   - Autobackup Data Via GMAIL"  | tee -a log-install.txt
echo "   - Autobackup Data Via BOT Telegram"  | tee -a log-install.txt
echo "   - Restore Data"  | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""   | tee -a log-install.txt
echo "   - Dev/Main                : william"  | tee -a log-install.txt
echo "   - Telegram                : t.me/user_legend"  | tee -a log-install.txt
echo "   - Facebook                : https://www.facebook.com/userlegend69"  | tee -a log-install.txt
echo "-------------------------------Script By William------------------------------"  | tee -a log-install.txt
echo " Reboot 15 Sec"
cd
rm -f setup
rm -rf setup.sh
rm -rf setup1.sh
rm -rf setup1.sh.1
rm -rf setup1.sh.2
rm -rf setup1.sh.3
rm -rf PDirect.js
rm -rf cert.pem
rm -rf key.pem
rm -rf ip
rm -rf wget-log
rm -rf cf.sh
rm -rf dnstt
rm -rf go
history -c
echo '1' > /home/ver
sleep 15
reboot
