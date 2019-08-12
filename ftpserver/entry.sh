#!/bin/sh
if [ -z ${PASSWORD} ]; then
  PASSWORD=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c${1:-8};echo;)
  echo "Generated password for user 'mhtsbt': ${PASSWORD}"
fi
# set ftp user password
echo "mhtsbt:${PASSWORD}" |/usr/sbin/chpasswd
chown mhtsbt:mhtsbt /data/ -R

if [ -z $1 ]; then
  /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
else
  $@
fi