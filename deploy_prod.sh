#!/bin/bash


sshpass -p ${pwd} ssh -o StrictHostKeyChecking=no ${uname}@${ip}  << EOF

echo '1. Updating sources'
cd ${path}
git checkout --force master
git pull

echo "2. Restart apache"
sudo apache2ctl graceful

echo 'Done!'

EOF
