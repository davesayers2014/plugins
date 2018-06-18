#! /bin/bash -
echo "Updating core files please wait"
opkg update >/dev/null 2>&1
echo "Reinstalling AutoBouquetsMaker please wait"
opkg install -force-reinstall enigma2-plugin-systemplugins-autobouquetsmaker
echo "Reinstalling CrossEPG"
opkg install -force-reinstall enigma2-plugin-systemplugins-crossepg
echo "Plugins Updated please reboot box"
