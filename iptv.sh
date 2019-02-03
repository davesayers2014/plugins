echo "JediMakerXtream playlist setup"
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
sed -i '$i config.plugins.JediMakerXtream.location=/etc/enigma2/' settings
init 3
echo $LINE
echo $LINE
echo "Restarting GUI"
echo $LINE
echo $LINE
echo "Playlists.txt written goto JediMakerXtream and setup your bouquets"
