#!/bin/sh

# Change directory to /home/user/pi/Downloads  
cd /home/user/pi/Downloads

#if jre1.8.0_401 folder exists, delete it
rm -rf jre1.8.0_401

#Download latest jre
curl -sL  https://javadl.oracle.com/webapps/download/AutoDL?BundleId=249540_4d245f941845490c91360409ecffb3b4 | tar xz

#backup the current cacerts to cacert.bak. do not overwrite if bak already exists
cp -n /usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/jre/lib/security/cacerts /usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/jre/lib/security/cacerts.bak

#Copy the latest certs into the jre
cp /home/pi/Downloads/jre1.8.0_401/lib/security/cacerts /usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/jre/lib/security/

# Reboot the system  
reboot now
