#!/bin/bash

. connops.sh

ftp -i -n -d -v $HOST << EOT
user $USER $PASSWD
binary
mput *.php
bye
EOT

exit 0
