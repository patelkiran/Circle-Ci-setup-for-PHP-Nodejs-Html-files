#!/bin/bash


sshpass -p <your password here> ssh -o StrictHostKeyChecking=no <username>@<ip address>  << EOF

echo '1. Updating sources'
cd <path>
git checkout --force <branch name>
git pull

echo "2. Restart apache"
sudo apache2ctl graceful

echo 'Done!'

EOF
