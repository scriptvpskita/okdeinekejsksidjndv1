#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
clear

echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e " ${red}                 ⇱ MENU VMESS WS ⇲               ${NC}"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$green [•1] $NC Create Vmess WS Account [${green}add-vmess${NC}]"
echo -e "$green [•2] $NC Delete Vmess WS Account [${green}del-vmess${NC}]"
echo -e "$green [•3] $NC Detail Vmess WS Account [${green}detail-vmess${NC}]"
echo -e "$green [•4] $NC Renew Vmess WS Account [${green}renew-vmess${NC}]"
echo -e "$green [•5] $NC Check User Login Xray-TLS [${green}cek-tls${NC}]"
echo -e "$green [•6] $NC Check User Login Xray-NTLS [${green}cek-ntls${NC}]"
echo -e "$green [•7] $NC Check Quota Usage Xray-TLS [${green}traffic-xraytls${NC}]"
echo -e "$green [•8] $NC Check Quota Usage Xray-NTLS [${green}traffic-xrayntls${NC}]"
echo -e "$green [•9] $NC Change Path Vmess WS [${green}path-vmess${NC}]"
echo -e "$green [•x] $NC Kembali Ke Menu [${green}x${NC}]"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
read -p "   Select From Options [1-9 or x]: " menuvmessws
echo -e ""
case $menuvmessws in
1)
add-vmess
;;
2)
del-vmess
;;
3)
detail-vmess
;;
4)
renew-vmess
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
path-vmess
;;
x)
clear
menu
;;
*)
echo " Please enter an correct number!!"
sleep 2
menu-vmess
;;
esac