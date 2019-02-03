read -p "Enter the username for your IPTV  : " username
read -p "Enter the password for your IPTV : " password
read -p "Enter the url your provider gave you for your IPTV  : " iptvhost

echo  "$iptvhost/get.php?username=$username&password=P$password&type=m3u_plus&output=ts" >> /etc/enigma2/jediplaylists/playlists.txt
