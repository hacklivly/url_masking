#!/bin/bash

# Function to prompt the user for input and validate it
get_input() {
    local prompt="$1"
    local pattern="$2"
    local error_message="$3"
    local input

    while true; do
        echo -e "$prompt"
        echo -en "\e[32m =>\e[0m "
        read input

        if [[ "$input" =~ $pattern ]]; then
            break
        else
            echo -e "\e[31m[!] $error_message\e[0m"
        fi
    done

    echo "$input"
}

# Function to shorten the URL using vurl.com API
shorten_url() {
    local url="$1"
    local short_url

    short_url=$(curl -s "https://vurl.com/api.php?url=$url")
    short_url=${short_url#https://}

    echo "$short_url"
}

# Prompt the user for the phishing URL
phishing_url=$(get_input "\e[91m[\e[92m★\e[91m] \e[32mPaste Phishing URL/Link here \e[96m(with https or http):\e[0m " "^https?://.*$" "Invalid URL. Please use http or https.")

# Shorten the URL
short_url=$(shorten_url "$phishing_url")

# Prompt the user for the domain to mask the phishing URL
mask=$(get_input "\e[91m[\e[92m*\e[91m]\e[93m\e[1m Domain to mask the Phishing URL \e[21m\e[0m: \e[91m(Ex:\e[96m https://google.com, https://youtube.com , http://facebook.com)\e[0m" "^https?://.*$" "Invalid domain.")

# Prompt the user for social engineering words
words=$(get_input " \e[91m[\e[92m*\e[91m] \e[93m\e[1mType social engineering words : \e[21m\e[0m\e[91m(Ex:\e[96m like, free-money, free-cource, free-insta-followers)\n \e[32m Don't use space just use\e[91m - \e[32mbetween social engineering words\e[0m" "^[-a-zA-Z0-9]+(-[-a-zA-Z0-9]+)*$" "Invalid social engineering words.")

# Generate the masked URL
masked_url="$mask-$words@$short_url"

# Print the masked URL
echo -e " \e[91m[\e[92m★\e[91m] \e[93mYour Masking URL/Link:\e[32m $masked_url \e[0m\n"
