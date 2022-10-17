#! /bin/bash

#===Bypass Paywall with CURL===
# Created by Deon van Zyl
# https://github.com/deonvz/bypasspaywall
#This script can aid testing of content availability
#The lines below will download the page in the place this script was placed. 
echo "The output will be saved in the same location as this script."
read -p "Which paywalled URL do you wish to download (Example https://www.site.com/thepaywalledpage.html)?" URLPATH
read -p "Name the HTML file that this will be saved as (example thepagecontent.html)" NAME
touch $NAME
curl -s -A dl -o "${NAME}" "${URLPATH}"
echo "Completed - page saved as ${NAME}"