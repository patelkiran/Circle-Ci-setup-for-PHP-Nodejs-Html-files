#!/bin/bash

echo 'pwd';
echo 'user_name';
echo 'ip_address';
echo 'path';
echo 'starting now';
sshpass -p 'pwd' ssh -o StrictHostKeyChecking=no 'user_name'@'ip_address'  << EOF

echo '1. Updating sources'
cd 'path'
git checkout --force master
git pull

echo "2. Restart apache"
sudo apache2ctl graceful

echo 'Done!'

EOF
