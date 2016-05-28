#!/bin/sh
date=$(date +"%b %d %T")
echo "_____________________________________________________________________________________________________________" >> /home/username/Script_Logs/renew.log
echo "$date:" >> /home/username/Script_Logs/renew.log
#renew cert
/home/username/letsencrypt/letsencrypt-auto renew --webroot -w /var/www/html  >> /home/username/Script_Logs/renew.log
#reload nginx
service nginx reload


