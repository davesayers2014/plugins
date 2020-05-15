#!/bin/sh


cd /tmp

unset LD_PRELOAD

echo "\n XStreamity setup script"

echo "downloading file"

wget -O /tmp/XStreamity-master.zip https://github.com/kiddac/XStreamity/archive/master.zip
  
echo "\n  unzipping file"
unzip -oq /tmp/XStreamity-master.zip
  
p -pr /tmp/XStreamity-master/XStreamity/usr/lib/enigma2/python/* /usr/lib/enigma2/python/

rm -rf /tmp/XStreamity-master /tmp/XStreamity-master.zip

echo "\n XStreamity playlist setup"
echo $LINE
echo $LINE
read -p "Enter the username for your IPTV  : " username
echo $LINE
read -p "Enter the password for your IPTV : " password
echo $LINE
read -p "Enter the host url your provider gave you for your IPTV  : " iptvhost
echo  "$iptvhost/get.php?username=$username&password=$password&type=m3u_plus&output=ts" >> /etc/enigma2/playlists.txt
echo $LINE
echo  "\n Writting settings please wait"
cd /etc/enigma2/
cd .
init 4
sleep 3 
sed -i '$i config.plugins.XStreamity.location=/etc/enigma2/' settings
init 3
echo $LINE
echo $LINE
echo "\nRestarting GUI"
echo $LINE
echo $LINE
echo "\n Playlists.txt written goto XStreamity and choose server"