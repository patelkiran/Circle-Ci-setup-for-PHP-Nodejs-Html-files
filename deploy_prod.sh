#!/bin/bash
SCRIPT="f6cac633f5426db71; ls"
ssh root@192.241.215.91 << EOF
"${SCRIPT}"

echo '1. Updating sources'
cd /var/www/html/test/test
git checkout --force master
git pull

echo "2. Restart apache"
sudo apache2ctl graceful

echo 'Done!'

EOF
