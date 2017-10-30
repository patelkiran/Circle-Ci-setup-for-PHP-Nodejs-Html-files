#!/bin/bash


sshpass -p ${pwd} ssh -o StrictHostKeyChecking=no root@${ip}  << EOF

echo '1. Updating sources'
cd /var/www/html/testphp/Circle-Ci-setup-for-PHP-Nodejs-Html-files/
git checkout --force master
git pull

echo "2. Restart apache"
sudo apache2ctl graceful

echo 'Done!'

EOF
