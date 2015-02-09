#!/bin/sh

#######################################
#                                     #
#  https://github.com/pedroguima      #
#                                     #
#######################################

## Variables ##
USER="USERNAME"
PASS="PASSWORD"
GETIPURL="http://myip.dnsdynamic.org/"
MYDOMAIN="mydomain.dnsdynamic.com"
## end variables ##

WGET=$(which wget)
IP=$($WGET $GETIPURL --quiet -O -)
URL="https://www.dnsdynamic.org/api/?hostname=$MYDOMAIN&myip=$IP"

$WGET --no-check-certificate --http-user="$USER" --http-password="$PASS" --quiet "$URL" -O /dev/null

