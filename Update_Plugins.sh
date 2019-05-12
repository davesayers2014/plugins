#! /bin/bash -
echo "Updating core files please wait"
opkg update >/dev/null 2>&1
echo $LINE
echo "Reinstalling AutoBouquetsMaker please wait"
echo $LINE
opkg install -force-reinstall enigma2-plugin-systemplugins-autobouquetsmaker
echo $LINE
mkdir -p /hdd/images/flash >/dev/null 2>&1
echo "Reinstalling E2iplayer"
rm -rf e2iplayer-master
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/IPTVPlayer
cd /tmp 
wget https://gitlab.com/e2i/e2iplayer/-/archive/master/e2iplayer-master.zip
unzip e2iplayer-master.zip
rm e2iplayer-master.zip
cp -r e2iplayer-master/IPTVPlayer /usr/lib/enigma2/python/Plugins/Extensions/IPTVPlayer
rm -rf e2iplayer-master

sync
echo $LINE
echo "Plugins Updated please reboot box"
