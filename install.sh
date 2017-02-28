#!/bin/bash

cd `dirname $0;pwd`

#rm -rf /Library/WebServer/Documents/app
rm -rf /var/www/html/app

gulp
#cp -r app /Library/WebServer/Documents/app
cp -r app /var/www/html/app
./restart.sh
