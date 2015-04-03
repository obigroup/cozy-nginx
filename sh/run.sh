#!/bin/bash
while ! curl -s $COZYAPPS_PORT_9104_TCP_ADDR:$COZYAPPS_PORT_9104_TCP_PORT; do sleep 5; done
sed s/127.0.0.1:9104/$COZYAPPS_PORT_9104_TCP_ADDR:$COZYAPPS_PORT_9104_TCP_PORT/g /etc/nginx/sites-available/cozy.conf.tmp > /etc/nginx/sites-available/cozy.conf
/usr/local/bin/supervisord -n -c /etc/supervisord.conf