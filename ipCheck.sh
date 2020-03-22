#!/bin/bash
# ipCheck.sh
# script to update user via e-mail on changes in router WAN ip Address
# helpful when trying to run servers/static addressed services on a DHCP network

# check current ip
IP_op=$(/usr/bin/curl -s checkip.dyndns.org )
# display current external ip in a nice way on STDOUT:
echo -n 'External '
echo $IP_op | awk -v FS="(<body>|</body>)" '{print $2}'

# notify user of the current external ip via e-mail:
osascript ~/Library/Application\ Scripts/com.apple.mail/IPchecker.scpt

#EOF
