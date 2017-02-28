#!/bin/bash

cd `dirname $0;pwd`
pwd

nohup redis-server > logs/redis.log 2>&1 &
nohup mongod --dbpath ./db > logs/mongodb.log 2>&1 &
sudo nohup node ./api/blog.js  > logs/blog_api.log 2>&1 &
