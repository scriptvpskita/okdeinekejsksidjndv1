#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
clear

echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e " ${red}                 ⇱ MENU TROJAN WS ⇲               ${NC}"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$green [•1] $NC Create Trojan WS Account [${green}add-trws${NC}]"
echo -e "$green [•2] $NC Delete Trojan WS Account [${green}del-trws${NC}]"
echo -e "$green [•3] $NC Detail Trojan WS Account [${green}detail-trws${NC}]"
echo -e "$green [•4] $NC Renew Trojan WS Account [${green}renew-trws${NC}]"
echo -e "$green [•5] $NC Check User Login Xray-TLS [${green}cek-tls${NC}]"
echo -e "$green [•6] $NC Check User Login Xray-NTLS [${green}cek-ntls${NC}]"
echo -e "$green [•7] $NC Check Quota Usage Xray-TLS [${green}traffic-xraytls${NC}]"
echo -e "$green [•8] $NC Check Quota Usage Xray-NTLS [${green}traffic-xrayntls${NC}]"
echo -e "$green [•9] $NC Change Path Trojan WS [${green}path-trws${NC}]"
echo -e "$green [•x] $NC Kembali Ke Menu [${green}x${NC}]"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
read -p "   Select From Options [1-9 or x]: " menutrojanws
echo -e ""
case $menutrojanws in
1)
add-trws
;;
2)
del-trws
;;
3)
detail-trws
;;
4)
renew-trws
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
path-trws
;;
x)
clear
menu
;;
*)
echo " Please enter an correct number!!"
sleep 2
menu-trojanws
;;
esac