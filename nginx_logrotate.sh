#!/bin/sh

DATE=`/bin/date --date "1 days ago" +%Y%m%d`
NGINX_LOG_DIR=/home/rahata/logs
mv $NGINX_LOG_DIR/access.log $NGINX_LOG_DIR/access.$DATE
mv $NGINX_LOG_DIR/error.log $NGINX_LOG_DIR/error.$DATE
kill -USR1 `cat /home/rahata/logs/nginx.pid`
