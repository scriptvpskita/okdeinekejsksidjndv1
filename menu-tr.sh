#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
clear

echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e " ${red}                   ⇱ MENU TROJAN ⇲               ${NC}"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$green [•1] $NC Create Trojan Account [${green}add-tr${NC}]"
echo -e "$green [•2] $NC Delete Trojan Account [${green}del-tr${NC}]"
echo -e "$green [•3] $NC Detail Trojan Account [${green}detail-tr${NC}]"
echo -e "$green [•4] $NC Renew Trojan Account [${green}renew-tr${NC}]"
echo -e "$green [•5] $NC Check User Login Xray-TLS [${green}cek-tls${NC}]"
echo -e "$green [•6] $NC Check User Login Xray-NTLS [${green}cek-ntls${NC}]"
echo -e "$green [•7] $NC Check Quota Usage Xray-TLS [${green}traffic-xraytls${NC}]"
echo -e "$green [•8] $NC Check Quota Usage Xray-NTLS [${green}traffic-xrayntls${NC}]"
echo -e "$green [•x] $NC Kembali Ke Menu [${green}x${NC}]"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
read -p "   Select From Options [1-8 or x]: " menutrojan
echo -e ""
case $menutrojan in
1)
add-tr
;;
2)
del-tr
;;
3)
detail-tr
;;
4)
renew-tr
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
x)
clear
menu
;;
*)
echo " Please enter an correct number!!"
sleep 2
menu-tr
;;
esac