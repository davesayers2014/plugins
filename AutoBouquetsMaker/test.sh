#!/bin/sh
echo "Checking and installing AutoBouquetsMaker "
echo "*****************************************"
echo $LINE
if [ -e /usr/lib/enigma2/python/BoxBrandingTest.pyo ]; then 
	python /usr/lib/enigma2/python/BoxBrandingTest.pyo | sed 's/<$//' | sed 's/ /_/g' > /tmp/boxbranding.cfg
	if grep -qs 'getImageArch=mips32el' cat /tmp/boxbranding.cfg  ; then
		echo "                                  "
		echo "**********************************"
		opkg install https://github.com/davesayers2014/plugins/blob/master/AutoBouquetsMaker/enigma2-plugin-systemplugins-autobouquetsmaker_3.1+git594+b6397ce-r0_mips32el.ipk?raw=true
		echo "*********************************"
		echo "                                  "
else
	echo "                                  "
	echo "**********************************"
	opkg install https://github.com/davesayers2014/plugins/blob/master/AutoBouquetsMaker/enigma2-plugin-systemplugins-autobouquetsmaker_3.1+git594+b6397ce-r0_cortexa15hf-neon-vfpv4.ipk?raw=true
	echo "*********************************"
	then
	echo $LINE
	echo "Reinstalling E2iplayer"
	rm -rf e2iplayer-master
	rm -rf /usr/lib/enigma2/python/Plugins/Extensions/IPTVPlayer
	cd /tmp 
	wget https://gitlab.com/e2i/e2iplayer/-/archive/master/e2iplayer-master.zip
	unzip e2iplayer-master.zip
	rm /tmp/e2iplayer-master.zip
	cp -r e2iplayer-master/IPTVPlayer /usr/lib/enigma2/python/Plugins/Extensions/IPTVPlayer
	rm -rf e2iplayer-master

	sync
	echo $LINE
	echo "Plugins Updated please reboot box"
exit 0
