#!/bin/sh


sync
echo "#########################################################"
echo "#          e2iStream INSTALL offline to be fixed           #"
echo "#########################################################"

#sync
#echo $LINE
echo $LINE
echo "Checking and installing AutoBouquetsMaker "
echo "*****************************************"
if [ -e /usr/lib/enigma2/python/BoxBrandingTest.pyo ]; then 
	python /usr/lib/enigma2/python/BoxBrandingTest.pyo | sed 's/<$//' | sed 's/ /_/g' > /tmp/boxbranding.cfg
	if grep -qs 'getImageArch=mips32el' cat /tmp/boxbranding.cfg  ; then
		echo "                                  "
		echo "**********************************"
		opkg install https://github.com/davesayers2014/plugins/blob/master/AutoBouquetsMaker/enigma2-plugin-systemplugins-autobouquetsmaker_3.1+git594+b6397ce-r0_mips32el.ipk?raw=true
		echo "*********************************"
		echo "                                  "
		echo "Plugins Updated please reboot box"
		exit 1
	fi
		
		
else
	echo "                                  "
	echo "**********************************"
	opkg install https://github.com/davesayers2014/plugins/blob/master/AutoBouquetsMaker/enigma2-plugin-systemplugins-autobouquetsmaker_3.1+git594+b6397ce-r0_cortexa15hf-neon-vfpv4.ipk?raw=true
	echo "*********************************"
	echo "                                  "
	#exit 1
fi

exit 0
	echo "Plugins Updated please reboot box"
