#!/bin/bash

cd `dirname $0;pwd`

rm -rf /Library/WebServer/Documents/app
cp -r app /Library/WebServer/Documents/app
./restart.sh
