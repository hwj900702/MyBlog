#!/bin/bash

cd `dirname $0;pwd`


pid=`ps aux | grep '/api/blog' | grep -v grep | grep -v nohup | awk '{print $2}'`

if [ $pid ]; then
    sudo kill -9 $pid
    echo pid $pid killed
fi

sudo nohup node ./api/blog.js  > logs/blog_api.log 2>&1 &
