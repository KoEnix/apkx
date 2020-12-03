#!/bin/sh

if [[ $EUID > 0 ]]; then
  echo "The installation script needs to be run as root."
  exit 1
else
  rm -rf /opt/apkx
  rm -rf /opt/enjarify
  rm -rf /opt/dex2jar
  rm -rf /usr/local/bin/enjarify
  rm -rf /usr/local/bin/apkx
  rm -rf /usr/local/bin/dex2jar

fi
