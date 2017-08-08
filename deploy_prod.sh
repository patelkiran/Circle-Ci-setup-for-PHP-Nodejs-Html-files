#!/bin/bash

spawn ssh MyUserName@192.168.20.20
expect "password"
send "f6cac633f5426db71\r"
interact

echo '1. Updating sources'
cd /var/www/html/test/test
git checkout --force master
git pull

echo "2. Restart apache"
sudo apache2ctl graceful

echo 'Done!'

EOF
