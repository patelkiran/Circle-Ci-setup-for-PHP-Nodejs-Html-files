#!/bin/bash

sshpass -p "your password" ssh -o StrictHostKeyChecking=no root@your_ip_address  << EOF

echo '1. Updating sources'
cd /var/www/html/test/test
git checkout --force master
git pull

echo "2. Restart apache"
sudo apache2ctl graceful

echo 'Done!'

EOF
