#!/bin/bash
while ! curl -s $COZYAPPS_HOST:$COZYAPPS_PORT; do sleep 5; done
/usr/local/bin/supervisord -n -c /etc/supervisord.conf