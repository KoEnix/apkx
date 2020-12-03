#!/bin/sh

if [[ $EUID > 0 ]]; then
  echo "The installation script needs to be run as root."
  exit 1
elif ! command -v git &> /dev/null; then
  echo "git must be installed!"
  exit 1
else
  mkdir -p /opt/apkx
  cp apkx apkx-libs.jar cfr.jar fernflower.jar /opt/apkx
  git clone https://github.com/Storyyeller/enjarify.git /opt/enjarify
  chmod 755 /opt/apkx/apkx /opt/enjarify/enjarify.sh
  ln -s "/opt/enjarify/enjarify.sh" /usr/local/bin/enjarify
  ln -s "/opt/apkx/apkx" /usr/local/bin/apkx

fi
