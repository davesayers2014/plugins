cd /tmp

unset LD_PRELOAD

echo "XStreamity setup script"

pyv="$(python -V 2>&1)"
echo "$pyv"
echo "Checking Dependencies"
echo
if [ -d /etc/opkg ]; then
    echo "updating feeds"
    opkg update
    echo
    if [[ $pyv =~ "Python 3" ]]; then
        echo "checking python3-image"
        opkg install python3-image
        echo
        echo "checking python3-imaging"
        opkg install python3-imaging
        echo
        echo "checking python3-requests"
        opkg install python3-requests
        echo
        echo "checking python3-multiprocessing"
        opkg install python3-multiprocessing
        echo
    else
        echo "checking python-image"
        opkg install python-image
        echo
        echo "checking python-imaging"
        opkg install python-imaging
        echo
        echo "checking python-requests"
        opkg install python-requests
        echo
        echo "checking python-multiprocessing"
        opkg install python-multiprocessing
        echo
    fi
else
    echo "updating feeds"
    apt-get update
    echo
    if [[ $pyv =~ "Python 3" ]]; then
        echo "checking python3-image"
        apt-get install python3-image
        echo
        echo "checking python3-imaging"
        apt-get install python3-imaging
        echo
        echo "checking python3-requests"
        apt-get install python3-requests
        echo
        echo "checking python3-multiprocessing"
        apt-get install python3-multiprocessing
        echo
    else
        echo "checking python-image"
        apt-get install python-image
        echo
        echo "checking python-imaging"
        apt-get install python-imaging
        echo
        echo "checking python-requests"
        apt-get install python-requests
        echo
        echo "checking python-multiprocessing"
        apt-get install python-multiprocessing
        echo
    fi
fi
exit 0



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
