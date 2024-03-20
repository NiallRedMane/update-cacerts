#!/bin/sh

echo "Starting the cacert update process"  

#Change directory to /home/pi/Downloads  
cd /home/pi/Downloads
echo "Changed directory to /home/pi/Downloads"  

#Download cacerts from github
echo "Downloading updated cacerts"  
curl -sL https://raw.githubusercontent.com/NiallRedMane/update-cacerts/main/cacerts > /home/pi/Downloads/cacerts
echo "Download complete." 

#Backup the current cacerts to cacert.bak. do not overwrite if bak already exists
echo "Backing up the current cacerts"  
cp -n /usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/jre/lib/security/cacerts /usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/jre/lib/security/cacerts.bak
echo "Backup complete"  

#Copy the latest certs into the jre
echo "Copying the latest certs into the jre"  
cp /home/pi/Downloads/cacerts /usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/jre/lib/security/
echo "Copy complete"  

#Remove downloaded cacerts
echo "Removing downloaded cacerts"  
rm /home/pi/Downloads/cacerts
echo "Removal complete"  

echo "Completed the cacert update process"  

#Reboot the system  
echo "Rebooting the system"
sleep 2 
reboot now
