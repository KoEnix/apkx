#!/bin/sh

if [[ $EUID > 0 ]]; then
  echo "The installation script needs to be run as root."
  exit 1
elif ! command -v git &> /dev/null; then
  echo "git must be installed!"
  exit 1
else
  mkdir -p /opt/apkx
  cp apkx cfr.jar fernflower.jar uninstall.sh /opt/apkx
  git clone https://github.com/Storyyeller/enjarify.git /opt/enjarify
  git clone https://github.com/KoEnix/dex2jar.git /opt/dex2jar
  chmod 755 /opt/apkx/apkx /opt/enjarify/enjarify.sh /opt/dex2jar/*sh /opt/apkx/uninstall.sh
  ln -s "/opt/enjarify/enjarify.sh" /usr/local/bin/enjarify
  ln -s "/opt/apkx/apkx" /usr/local/bin/apkx
  ln -s "/opt/dex2jar/d2j-dex2jar.sh" /usr/local/bin/dex2jar

fi
