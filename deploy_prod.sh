#!/bin/bash

echo process.env['pwd'];
echo process.env['user_name'];
echo process.env['ip_address'];
echo process.env['path'];
echo 'starting now';
sshpass -p process.env['pwd'] ssh -o StrictHostKeyChecking=no process.env['user_name']@process.env['ip_address']  << EOF

echo '1. Updating sources'
cd process.env['path']
git checkout --force master
git pull

echo "2. Restart apache"
sudo apache2ctl graceful

echo 'Done!'

EOF
