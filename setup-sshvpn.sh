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

#
# ==================================================
# Update Update Gajelas
apt update -y
apt upgrade -y
apt install netfilter-persistent -y
apt install netcat -y
apt install python -y
apt install ruby -y
apt install make -y
apt install cmake -y
apt install coreutils -y
apt install rsyslog -y
apt install net-tools -y
apt install zip -y
apt install unzip -y
apt install nano -y
apt install sed -y
apt install gnupg -y
apt install gnupg1 -y
apt install bc -y
apt install jq -y
apt install apt-transport-https -y
apt install build-essential -y
apt install dirmngr -y
apt install libxml-parser-perl -y
apt install neofetch -y
apt install git -y
apt install lsof -y
apt install libsqlite3-dev -y
apt install libz-dev -y
apt install gcc -y
apt install g++ -y
apt install libreadline-dev -y
apt install zlib1g-dev -y
apt install libssl-dev -y
apt install libssl1.0-dev -y
apt install dos2unix -y
apt install python3-pip -y
apt-get install python3-setuptools -y
apt-get upgrade python3-setuptools -y

clear
domain=$(cat /etc/xray/domain)
# Install Nginx
source /etc/os-release
release=$ID
VERSION=$VERSION_ID
if [[ "${release}" == "debian" ]]; then
	apt install gnupg2 ca-certificates lsb-release -y
	echo "deb http://nginx.org/packages/mainline/debian $(lsb_release -cs) nginx" | tee /etc/apt/sources.list.d/nginx.list
	echo -e "Package: *\nPin: origin nginx.org\nPin: release o=nginx\nPin-Priority: 900\n" | tee /etc/apt/preferences.d/99nginx
	curl -o /tmp/nginx_signing.key https://nginx.org/keys/nginx_signing.key
	# gpg --dry-run --quiet --import --import-options import-show /tmp/nginx_signing.key
	mv /tmp/nginx_signing.key /etc/apt/trusted.gpg.d/nginx_signing.asc
	apt update

elif [[ "${release}" == "ubuntu" ]]; then
	apt install gnupg2 ca-certificates lsb-release -y
	echo "deb http://nginx.org/packages/mainline/ubuntu $(lsb_release -cs) nginx" | tee /etc/apt/sources.list.d/nginx.list
	echo -e "Package: *\nPin: origin nginx.org\nPin: release o=nginx\nPin-Priority: 900\n" | tee /etc/apt/preferences.d/99nginx
	curl -o /tmp/nginx_signing.key https://nginx.org/keys/nginx_signing.key
	# gpg --dry-run --quiet --import --import-options import-show /tmp/nginx_signing.key
	mv /tmp/nginx_signing.key /etc/apt/trusted.gpg.d/nginx_signing.asc
	apt update

elif [[ "${release}" == "centos" ]]; then
	apt install yum-utils
	cat <<EOF >/etc/yum.repos.d/nginx.repo
[nginx-stable]
name=nginx stable repo
baseurl=http://nginx.org/packages/centos/\$releasever/\$basearch/
gpgcheck=1
enabled=1
gpgkey=https://nginx.org/keys/nginx_signing.key
module_hotfixes=true

[nginx-mainline]
name=nginx mainline repo
baseurl=http://nginx.org/packages/mainline/centos/\$releasever/\$basearch/
gpgcheck=1
enabled=0
gpgkey=https://nginx.org/keys/nginx_signing.key
module_hotfixes=true
EOF
		yum-config-manager --enable nginx-mainline
	fi
if [[ $release == 'debian' ]]; then
adduser --system --no-create-home --shell /bin/false --group --disabled-login nginx
fi
mkdir -p /home/vps/public_html
apt install nginx -y
wget -q -O /etc/nginx/conf.d/default.conf "https://raw.githubusercontent.com/$repogithub/default.conf"
wget -q -O /etc/nginx/conf.d/alone.conf "https://raw.githubusercontent.com/$repogithub/alone.conf"
wget -q -O /etc/nginx/conf.d/vps.conf "https://raw.githubusercontent.com/$repogithub/vps.conf"
wget -q -O /etc/nginx/conf.d/vmnone.conf "https://raw.githubusercontent.com/$repogithub/vmnone.conf"
wget -q -O /etc/nginx/conf.d/vlnone.conf "https://raw.githubusercontent.com/$repogithub/vlnone.conf"
sed -i "s/domain_kamu/$domain/g" /etc/nginx/conf.d/alone.conf
sed -i "s/isi_domain/$domain/g" /etc/nginx/conf.d/vmnone.conf
sed -i "s/isi_domain/$domain/g" /etc/nginx/conf.d/vlnone.conf

systemctl daemon-reload
systemctl enable nginx
systemctl start nginx
systemctl restart nginx

# initializing var
export DEBIAN_FRONTEND=noninteractive
MYIP=$(wget -qO- ipinfo.io/ip);
MYIP2="s/xxxxxxxxx/$MYIP/g";
NET=$(ip -o $ANU -4 route show to default | awk '{print $5}');
source /etc/os-release
ver=$VERSION_ID

#detail nama perusahaan
country=ID
state=Indonesia
locality=Indonesia
organization=william
organizationalunit=william
commonname=william
email=asistenwilliam@gmail.com

# simple password minimal
wget -q -O /etc/pam.d/common-password "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/password"
chmod +x /etc/pam.d/common-password

# go to root
cd

# Edit file /etc/systemd/system/rc-local.service
cat > /etc/systemd/system/rc-local.service <<-END
[Unit]
Description=/etc/rc.local
ConditionPathExists=/etc/rc.local
[Service]
Type=forking
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99
[Install]
WantedBy=multi-user.target
END

# nano /etc/rc.local
cat > /etc/rc.local <<-END
#!/bin/sh -e
# rc.local
# By default this script does nothing.
exit 0
END

# Ubah izin akses
chmod +x /etc/rc.local

# enable rc local
systemctl enable rc-local
systemctl start rc-local.service

# disable ipv6
echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
sed -i '$ i\echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6' /etc/rc.local

#update
apt update -y
apt upgrade -y
apt dist-upgrade -y
apt-get remove --purge ufw firewalld -y
apt-get remove --purge exim4 -y


# install wget and curl
apt -y install wget curl

# set time GMT +7
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# set locale
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config

# install
apt-get --reinstall --fix-missing install -y bzip2 gzip coreutils wget screen rsyslog iftop htop net-tools zip unzip wget net-tools curl nano sed screen gnupg gnupg1 bc apt-transport-https build-essential dirmngr libxml-parser-perl neofetch git lsof
if grep -Fxq "menu2" .profile
then
echo "skipped added menu in profile (found)"
else
echo "clear" >> .profile
echo "menu2" >> .profile
fi

# install badvpn
cd
wget -q -O /usr/bin/badvpn-udpgw "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/badvpn-udpgw64"
chmod +x /usr/bin/badvpn-udpgw
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 512 --max-connections-for-client 10' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 512 --max-connections-for-client 10' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 512 --max-connections-for-client 10' /etc/rc.local
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500

# setting port ssh
sed -i 's/Port 22/Port 22/g' /etc/ssh/sshd_config

# install dropbear
apt -y install dropbear
cd /etc/default/dropbear
if [ DROPBEAR_EXTRA_ARGS="-p 109" ]
then
   sed -i 's/DROPBEAR_EXTRA_ARGS="-p 109"/DROPBEAR_EXTRA_ARGS=/g' /etc/default/dropbear
fi
sed -i 's/NO_START=1/NO_START=0/g' /etc/default/dropbear
sed -i 's/DROPBEAR_PORT=22/DROPBEAR_PORT=143/g' /etc/default/dropbear
sed -i 's/DROPBEAR_EXTRA_ARGS=/DROPBEAR_EXTRA_ARGS="-p 109"/g' /etc/default/dropbear
echo "/bin/false" >> /etc/shells
echo "/usr/sbin/nologin" >> /etc/shells
/etc/init.d/dropbear restart

# install squid
clear
source /etc/os-release
OS=$PRETTY_NAME
if [[ $OS == 'Debian GNU/Linux 11 (bullseye)' ]]; then
apt install squid -y
else
apt -y install squid3
fi
wget -q -O /etc/squid/squid.conf "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/squid3.conf"
sed -i $MYIP2 /etc/squid/squid.conf

# setting vnstat
apt -y install vnstat
/etc/init.d/vnstat restart
apt -y install libsqlite3-dev
wget -q https://humdi.net/vnstat/vnstat-2.6.tar.gz
tar zxvf vnstat-2.6.tar.gz
cd vnstat-2.6
./configure --prefix=/usr --sysconfdir=/etc && make && make install
cd
vnstat -u -i $NET
sed -i 's/Interface "'""eth0""'"/Interface "'""$NET""'"/g' /etc/vnstat.conf
chown vnstat:vnstat /var/lib/vnstat -R
systemctl enable vnstat
/etc/init.d/vnstat restart
rm -f /root/vnstat-2.6.tar.gz
rm -rf /root/vnstat-2.6

 install stunnel 5 
cd /root/
wget -q -O stunnel5.zip "https://raw.githubusercontent.com/scriptvpskita/list-version/main/stunnel5.zip"
unzip -o stunnel5.zip
cd /root/stunnel
chmod +x configure
./configure
make
make install
cd /root
rm -r -f stunnel
rm -f stunnel5.zip
mkdir -p /etc/stunnel
chmod 644 /etc/stunnel
cp /usr/local/bin/stunnel /usr/local/bin/stunnel5
rm -rf /usr/local/bin/stunnel3
rm -rf /usr/local/bin/stunnel
touch /etc/stunnel/stunnel5.conf
touch /etc/stunnel/stunnel5.pem

# Download Config Stunnel5
cat > /etc/stunnel/stunnel.conf <<-END
cert = /etc/stunnel/stunnel5.pem
client = no
socket = a:SO_REUSEADDR=1
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1

[dropbear ws ssl]
accept = 6443
connect = 127.0.0.1:2052

[openvpn]
accept = 442
connect = 127.0.0.1:1194

END


# make a certificate
openssl genrsa -out key.pem 2048
openssl req -new -x509 -key key.pem -out cert.pem -days 1095 \
-subj "/C=$country/ST=$state/L=$locality/O=$organization/OU=$organizationalunit/CN=$commonname/emailAddress=$email"
cat key.pem cert.pem >> /etc/stunnel/stunnel5.pem

# Service Stunnel5 systemctl restart stunnel5
cat > /etc/systemd/system/stunnel5.service << END
[Unit]
Description=Stunnel5 Service
Documentation=https://stunnel.org
Documentation=https://github.com/joysmark
After=syslog.target network-online.target

[Service]
ExecStart=/usr/local/bin/stunnel5 /etc/stunnel/stunnel.conf
Type=forking

[Install]
WantedBy=multi-user.target
END

# Service Stunnel5 /etc/init.d/stunnel5
wget -q -O /etc/init.d/stunnel5 "https://raw.githubusercontent.com/scriptvpskita/list-version/main/stunnel5.init"

# Ubah Izin Akses
chmod 600 /etc/stunnel/stunnel5.pem
chmod +x /etc/init.d/stunnel5

# Remove File
rm -r -f /usr/local/share/doc/stunnel/
rm -r -f /usr/local/etc/stunnel/
rm -f /usr/local/bin/stunnel
rm -f /usr/local/bin/stunnel3
rm -f /usr/local/bin/stunnel4
#rm -f /usr/local/bin/stunnel5

# Restart Stunnel 5
systemctl stop stunnel5
systemctl enable stunnel5
systemctl start stunnel5
systemctl restart stunnel5
/etc/init.d/stunnel5 restart
/etc/init.d/stunnel5 status
/etc/init.d/stunnel5 restart

#OpenVPN
wget -q https://raw.githubusercontent.com/$repogithub/vpn.sh &&  chmod +x vpn.sh && ./vpn.sh && rm -rf vpn.sh

# install fail2ban
apt -y install fail2ban

# Instal DDOS Flate
if [ -d '/usr/local/ddos' ]; then
	rm -rf /usr/local/ddos
else
	mkdir /usr/local/ddos
fi
clear
echo; echo 'Installing DOS-Deflate 0.6'; echo
echo; echo -n 'Downloading source files...'
wget -q -O /usr/local/ddos/ddos.conf http://www.inetbase.com/scripts/ddos/ddos.conf
echo -n '.'
wget -q -O /usr/local/ddos/LICENSE http://www.inetbase.com/scripts/ddos/LICENSE
echo -n '.'
wget -q -O /usr/local/ddos/ignore.ip.list http://www.inetbase.com/scripts/ddos/ignore.ip.list
echo -n '.'
wget -q -O /usr/local/ddos/ddos.sh http://www.inetbase.com/scripts/ddos/ddos.sh
chmod 0755 /usr/local/ddos/ddos.sh
cp -s /usr/local/ddos/ddos.sh /usr/local/sbin/ddos
echo '...done'
echo; echo -n 'Creating cron to run script every minute.....(Default setting)'
/usr/local/ddos/ddos.sh --cron > /dev/null 2>&1
echo '.....done'
echo; echo 'Installation has completed.'
echo 'Config file is at /usr/local/ddos/ddos.conf'
echo 'Please send in your comments and/or suggestions to zaf@vsnl.com'

# banner /etc/issue.net
echo "Banner /etc/issue.net" >>/etc/ssh/sshd_config
sed -i 's@DROPBEAR_BANNER=""@DROPBEAR_BANNER="/etc/issue.net"@g' /etc/default/dropbear
cat > "/etc/issue.net" << EOF
<p style="text-align:center"><span style=>
<BR><font color='#00ff36'>WELCOME TO PREMIUM SERVER</font>
<BR><font color='#5539fb'>===============================</font>
<BR><font color='#aa1df8'>PERATURAN SERVER PREMIUM </font>
<BR><font color='#5539fb'>===============================</font>
<BR><font color='#0056ff'> NO DDOS </font>
<BR><font color='#0080bf'> NO HACKING </font>
<BR><font color='#00ab80'> NO DOWNLOAD FILE TORRENT </font>
<BR><font color='#00d540'> MAX LOGIN 2 DEVICE/BITVICE </font>
<BR><font color='#00ff00'> MELANGGAR BANNED PERMANENT</font>
<BR><font color='#55aa75'>===============================</font>
<BR><font color='#aa55b5'>THANKYOU FOR USING OUR SERVICE</font>
<BR><font color='#0000ff'>===============================</font></font>
</p>
EOF

# blockir torrent
iptables -A FORWARD -m string --algo bm --string "BitTorrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent protocol" -j DROP
iptables -A FORWARD -m string --algo bm --string "peer_id=" -j DROP
iptables -A FORWARD -m string --algo bm --string ".torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce.php?passkey=" -j DROP
iptables -A FORWARD -m string --algo bm --string "torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce" -j DROP
iptables -A FORWARD -m string --algo bm --string "info_hash" -j DROP
iptables -A FORWARD -m string --algo bm --string "/default.ida?" -j DROP
iptables -A FORWARD -m string --algo bm --string ".exe?/c+dir" -j DROP
iptables -A FORWARD -m string --algo bm --string ".exe?/c_tftp" -j DROP
iptables -A FORWARD -m string --string "peer_id" --algo kmp -j DROP
iptables -A FORWARD -m string --string "BitTorrent" --algo kmp -j DROP
iptables -A FORWARD -m string --string "BitTorrent protocol" --algo kmp -j DROP
iptables -A FORWARD -m string --string "bittorrent-announce" --algo kmp -j DROP
iptables -A FORWARD -m string --string "announce.php?passkey=" --algo kmp -j DROP
iptables -A FORWARD -m string --string "find_node" --algo kmp -j DROP
iptables -A FORWARD -m string --string "info_hash" --algo kmp -j DROP
iptables -A FORWARD -m string --string "get_peers" --algo kmp -j DROP
iptables -A FORWARD -m string --string "announce" --algo kmp -j DROP
iptables -A FORWARD -m string --string "announce_peers" --algo kmp -j DROP
iptables-save > /etc/iptables.up.rules
iptables-restore -t < /etc/iptables.up.rules
netfilter-persistent save
netfilter-persistent reload

#SLOW-DNS SETUP
nsdomain=$(cat /etc/ns/domain)
apt install golang -y
apt install git -y
apt install dnsutils -y
apt update -y
apt install -y python3 python3-dnslib net-tools
apt install ncurses-utils -y
apt install dnsutils -y
apt install git -y
apt install curl -y
apt install wget -y
apt install ncurses-utils -y
apt install screen -y
apt install cron -y
apt install iptables -y
apt install -y git screen whois dropbear wget
apt install -y sudo gnutls-bin
apt install -y dos2unix debconf-utils
service cron reload
service cron restart

cd
sed -i 's/#AllowTcpForwarding yes/AllowTcpForwarding yes/g' /etc/ssh/sshd_config
service ssh restart
service sshd restart

git clone https://www.bamsoftware.com/git/dnstt.git
cd dnstt/dnstt-server
go build
mkdir -m 777 /etc/william/slowdns/
mkdir -p /etc/william/slowdns/
touch /etc/william/slowdns/server.key
touch /etc/william/slowdns/server.pub
cd /etc/william/slowdns/
wget -q -O /etc/william/slowdns/dns-server "https://raw.githubusercontent.com/osjekwknwjsk/jdiejeh/main/dns-server"
chmod +x /etc/william/slowdns/dns-server
cd /etc/william/slowdns/
./dns-server -gen-key -privkey-file /etc/william/slowdns/server.key -pubkey-file /etc/william/slowdns/server.pub
cd /root
iptables -I INPUT -p udp --dport 5300 -j ACCEPT
iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 5300
netfilter-persistent save
netfilter-persistent reload

# SERVER SLOWDNS
cat > /etc/systemd/system/slowdns.service << END
[Unit]
Description=SLOWDNS BY WILLIAM
Documentation=https://t.me/user_legend
After=network.target nss-lookup.target
[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/etc/william/slowdns/dns-server -udp :5300 -privkey-file /etc/william/slowdns/server.key $nsdomain 127.0.0.1:22
Restart=on-failure
[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable slowdns
systemctl start slowdns
systemctl restart slowdns

# download script
cd /usr/bin
echo "PLEASE WAIT......"
wget -q -O hapus "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/hapus.sh"
wget -q -O member "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/member.sh"
wget -q -O cek "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/cek.sh"
wget -q -O speedtest "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/speedtest_cli.py"
wget -q -O info "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/info.sh"
wget -q -O ram "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/ram.sh"
wget -q -O renew "https://raw.githubusercontent.com/$repogithub/renew.sh"
wget -q -O autokill "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/autokill.sh"
wget -q -O ceklim "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/ceklim.sh"
wget -q -O wbmn "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/webmin.sh"
wget -q -O tcp-tweaker "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/tcp-tweaker.sh"
wget -q -O pointing-vps "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/pointing-vps.sh"
wget -q -O tendang "https://raw.githubusercontent.com/osjekwknwjsk/awikwok/main/tendang.sh"
chmod +x tendang
chmod +x hapus
chmod +x member
chmod +x cek
chmod +x speedtest
chmod +x info
chmod +x autokill
chmod +x ceklim
chmod +x ram
chmod +x renew
chmod +x clear-log
chmod +x wbmn
chmod +x tcp-tweaker
chmod +x pointing-vps
echo "0 0 * * * root del-exp" >> /etc/crontab
echo "0 */5 * * * root clear-log" >> /etc/crontab
echo "0 4 1 * * root auto-certxray" >> /etc/crontab
# remove unnecessary files
cd
apt autoclean -y
apt -y remove --purge unscd
apt-get -y --purge remove samba*;
apt-get -y --purge remove apache2*;
apt-get -y --purge remove bind9*;
apt-get -y remove sendmail*
apt autoremove -y
# finishing
cd
chown -R www-data:www-data /home/vps/public_html
/etc/init.d/nginx restart
/etc/init.d/openvpn restart
/etc/init.d/cron restart
/etc/init.d/ssh restart
/etc/init.d/dropbear restart
/etc/init.d/fail2ban restart
/etc/init.d/stunnel5 restart
/etc/init.d/vnstat restart
/etc/init.d/squid restart
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 512 --max-connections-for-client 10
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 512 --max-connections-for-client 10
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 512 --max-connections-for-client 10
history -c
echo "unset HISTFILE" >> /etc/profile

cd
rm -f /root/key.pem
rm -f /root/cert.pem
rm -f /root/ssh-vpn.sh
echo "1" > /home/ver

# finihsing
clear
apt install figlet
apt install lolcat
