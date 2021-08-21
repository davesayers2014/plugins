cd /tmp

unset LD_PRELOAD

echo "XStreamity update script"
echo $LINE
echo $LINE
echo "XStreamity Download latest XStreamity from github"



echo "downloading file"

wget -O /tmp/XStreamity-master.zip https://github.com/kiddac/XStreamity/archive/master.zip
  
echo "unzipping file"
unzip -oq /tmp/XStreamity-master.zip
  
cp -pr /tmp/XStreamity-master/XStreamity/usr/lib/enigma2/python/* /usr/lib/enigma2/python/

rm -rf /tmp/XStreamity-master /tmp/XStreamity-master.zip

echo "Xstreamity Updated reboot box"
