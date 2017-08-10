#!/bin/bash

echo process.env['pwd'];
echo process.env['user_name'];
echo process.env['ip_address'];
echo process.env['path'];
echo 'starting now';
sshpass -p f6cac633f5426db71 ssh -o StrictHostKeyChecking=no root@192.241.215.91  << EOF

echo '1. Updating sources'
cd /var/www/html/test/Circle-Ci-setup-for-PHP-Nodejs-Html-files
git checkout --force master
git pull

echo "2. Restart apache"
sudo apache2ctl graceful

echo 'Done!'

EOF
