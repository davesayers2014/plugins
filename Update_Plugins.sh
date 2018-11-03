#! /bin/bash -
echo "Updating core files please wait"
opkg update >/dev/null 2>&1
echo $LINE
echo "Reinstalling AutoBouquetsMaker please wait"
echo $LINE
opkg install -force-reinstall enigma2-plugin-systemplugins-autobouquetsmaker
echo $LINE
mkdir -p /hdd/images/flash > dev/null 2>&1
echo $LINE
echo "Plugins Updated please reboot box"
