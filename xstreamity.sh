#command wget --no-check-certificate -O IPTV.sh https://raw.githubusercontent.com/davesayers2014/plugins/master/xstreamity.sh && chmod +x IPTV.sh && ./IPTV.sh

cd /tmp

unset LD_PRELOAD

echo "XStreamity setup script version"

content=$(wget https://raw.githubusercontent.com/kiddac/XStreamity/master/XStreamity/usr/lib/enigma2/python/Plugins/Extensions/XStreamity/version.txt -q -O -)
echo $content

echo "downloading file"

wget -O /tmp/XStreamity-master.zip https://github.com/kiddac/XStreamity/archive/master.zip
  
echo "unzipping file"
unzip -oq /tmp/XStreamity-master.zip
  
cp -pr /tmp/XStreamity-master/XStreamity/usr/lib/enigma2/python/* /usr/lib/enigma2/python/

rm -rf /tmp/XStreamity-master /tmp/XStreamity-master.zip

wget -O /usr/script/UpdXstreamity.sh https://raw.githubusercontent.com/davesayers2014/plugins/master/UpdXstreamity.sh

echo "XStreamity playlist setup"
echo $LINE
echo $LINE
read -p "Enter the username for your IPTV  : " username
echo $LINE
read -p "Enter the password for your IPTV : " password
echo $LINE
read -p "Enter the host url your provider gave you for your IPTV  : " iptvhost
echo  "$iptvhost/get.php?username=$username&password=$password&type=m3u_plus&output=ts" >> /etc/enigma2/playlists.txt
echo $LINE
echo  "Writting settings please wait"
cd /etc/enigma2/
cd .
init 4
sleep 3 
sed -i '$i config.plugins.XStreamity.location=/etc/enigma2/' settings
init 3
echo $LINE
echo $LINE
echo "Restarting GUI"
echo $LINE
echo $LINE
echo "Playlists.txt written goto XStreamity and choose server"
