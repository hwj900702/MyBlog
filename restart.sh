#!/bin/bash

cd `dirname $0;pwd`


pid=`ps aux | grep '/api/blog.js' | grep -v grep | awk '{print $2}'`
if [ -n $pid ]; then
    kill -9 $pid
    echo $pid
fi

nohup node ./api/blog.js  > logs/blog_api.log 2>&1 &
