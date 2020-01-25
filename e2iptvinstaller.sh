#!/bin/sh

# remove old version
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/IPTVPlayer

# Download and install plugin
cd /tmp 
set -e
wget "https://www.softrix.co.uk/istream/downloads/e2istream_pythonX.X.tar.gz"

tar -xzf e2istream_pythonX.X.tar.gz -C /
set +e
rm -f e2istream_pythonX.X.tar.gz
cd ..

sync
echo "#########################################################"
echo "#   e2iStream INSTALLED SUCCESSFULLY please reboot box  #"
echo "#########################################################"
reboot
