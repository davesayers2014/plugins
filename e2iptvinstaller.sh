rm -rf e2iplayer-master
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/IPTVPlayer
cd /tmp 
wget https://gitlab.com/e2i/e2iplayer/-/archive/master/e2iplayer-master.zip
unzip e2iplayer-master.zip
rm e2iplayer-master.zip
cp -r e2iplayer-master/IPTVPlayer /usr/lib/enigma2/python/Plugins/Extensions/IPTVPlayer
rm -rf e2iplayer-master

sync
reboot
