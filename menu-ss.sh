#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
clear

echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e " ${red}                ⇱ MENU SS2022 WS ⇲               ${NC}"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$green [•1] $NC Create Shadowsocks2022 WS Account [${green}add-ss${NC}]"
echo -e "$green [•2] $NC Delete Shadowsocks2022 WS Account [${green}del-ss${NC}]"
echo -e "$green [•3] $NC Detail Shadowsocks2022 WS Account [${green}detail-ss${NC}]"
echo -e "$green [•4] $NC Renew Shadowsocks2022 WS Account [${green}renew-ss${NC}]"
echo -e "$green [•5] $NC Check User Login Xray-TLS [${green}cek-tls${NC}]"
echo -e "$green [•6] $NC Check User Login Xray-NTLS [${green}cek-ntls${NC}]"
echo -e "$green [•7] $NC Check Quota Usage Xray-TLS [${green}traffic-xraytls${NC}]"
echo -e "$green [•8] $NC Check Quota Usage Xray-NTLS [${green}traffic-xrayntls${NC}]"
echo -e "$green [•9] $NC Change Path Shadowsocks2022 WS [${green}path-ss${NC}]"
echo -e "$green [•x] $NC Kembali Ke Menu [${green}x${NC}]"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
read -p "   Select From Options [1-9 or x]: " menushadowsocks
echo -e ""
case $menushadowsocks in
1)
add-ss
;;
2)
del-ss
;;
3)
detail-ss
;;
4)
renew-ss
;;
5)
cek-tls
;;
6)
cek-ntls
;;
7)
traffic-xraytls
;;
8)
traffic-xrayntls
;;
9)
path-ss
;;
x)
clear
menu
;;
*)
echo " Please enter an correct number!!"
sleep 2
menu-ss
;;
esac