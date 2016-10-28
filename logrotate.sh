#!/bin/sh

DATE=`/bin/date +%Y%m%d`

################################
#delete nginx log.
################################
NGINX_LOG_DATE=`/bin/date --date "1 days ago" +%Y%m%d`
NGINX_LOG_DIR=/home/rahata/logs

gzip $NGINX_LOG_DIR/access.$NGINX_LOG_DATE
gzip $NGINX_LOG_DIR/error.$NGINX_LOG_DATE

find $NGINX_LOG_DIR -mtime +180 -name "access.*" -exec rm {} \;
find $NGINX_LOG_DIR -mtime +180 -name "error.*" -exec rm {} \;

