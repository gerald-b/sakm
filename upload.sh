#!/bin/bash

. connops.sh

ftp -i -n -d -v $HOST << EOT
user $USER $PASSWD
binary
mput *.php
mkdir config
lcd config
cd config
mput *.sample
put default.conf.php
bye
EOT

exit 0
