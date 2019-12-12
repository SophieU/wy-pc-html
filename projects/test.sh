#!/bin/bash
 
WEB_PATH='/usr/local/nginx/html/'
WEB_USER='root'
WEB_USERGROUP='root'
 
echo "Start deployment test"
cd $WEB_PATH
echo "pulling source code..."
# git reset --hard origin/release
# git clean -f
git pull
git checkout master
echo "changing permissions..."
chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH
npm run bulid
echo "Finished."
