echo "0 4 * * *  /home/rahata/scripts/rotatelog.sh" >> mycron
echo "0 0 * * * /home/rahata/scripts/nginx_logrotate.sh" >> mycron
crontab mycron
rm mycron
