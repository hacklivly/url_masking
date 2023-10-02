#!/bin/bash
# Bash Script for Hide Phishing URL Created by Suman Online Hacking
echo -e ""
echo -e "\e[95m 
███████╗████████╗ █████╗ ████████╗██╗███╗   ██╗ ██████╗     
██╔════╝╚══██╔══╝██╔══██╗╚══██╔══╝██║████╗  ██║██╔════╝     
███████╗   ██║   ███████║   ██║   ██║██╔██╗ ██║██║  ███╗    
╚════██║   ██║   ██╔══██║   ██║   ██║██║╚██╗██║██║   ██║    
███████║   ██║   ██║  ██║   ██║   ██║██║ ╚████║╚██████╔╝    
╚══════╝   ╚═╝   ╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ \e[95;1m \e[0m\n"

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo -e ""
clear
echo -e ""
echo -e "\e[95m 
██╗   ██╗██████╗ ██╗         ███╗   ███╗ █████╗ ███████╗██╗  ██╗██╗███╗   ██╗ ██████╗     
██║   ██║██╔══██╗██║         ████╗ ████║██╔══██╗██╔════╝██║ ██╔╝██║████╗  ██║██╔════╝     
██║   ██║██████╔╝██║         ██╔████╔██║███████║███████╗█████╔╝ ██║██╔██╗ ██║██║  ███╗    
██║   ██║██╔══██╗██║         ██║╚██╔╝██║██╔══██║╚════██║██╔═██╗ ██║██║╚██╗██║██║   ██║    
╚██████╔╝██║  ██║███████╗    ██║ ╚═╝ ██║██║  ██║███████║██║  ██╗██║██║ ╚████║╚██████╔╝    
 ╚═════╝ ╚═╝  ╚═╝╚══════╝    ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝  \e[95;1m \e[0m\n" 
echo -e ""
echo -e ' \e[91m[\e[92m★\e[91m] \e[32mEnter your Link/URL here \e[96m(with https or http):\e[0m '
echo -en "\e[32m =>\e[0m "
read phish
url_checker $phish
echo -e ""
short=$(curl -s https://vurl.com/api.php?url=${phish})
shorter=${short#https://}
echo -e ""
echo -e ' \e[91m[\e[92m*\e[91m]\e[93m\e[1m Choose Domain to mask your link/URL \e[21m\e[0m: \e[91m(Ex:\e[96m https://google.com, https://youtube.com , http://facebook.com)\e[0m'
echo -en "\e[32m =>\e[0m "
read mask
url_checker $mask
echo -e ""
echo -e ""
echo -e ' \e[91m[\e[92m*\e[91m] \e[93m\e[1mType Enter URL words : \e[21m\e[0m\e[91m(Ex:\e[96m like, free-money, free-cource, free-insta-followers)'
echo -en "\e[32m=>\e[0m "
read words
echo -e ""
echo -e ""
echo -e " \e[32m+=>\e[94m >>>>>Processing and Modifing Phishing URL ..........\e[0m"
sleep 3
echo -e " \e[32m+=>\e[95m >>>>>Generating Masked Link.......\e[0m\n"
sleep 5
echo -e ""
final=$mask-$words@$shorter
echo -e " \e[91m[\e[92m★\e[91m] \e[93mYour Masking URL/Link:\e[32m ${final} \e[0m\n"
echo -e ""
echo -e ""


