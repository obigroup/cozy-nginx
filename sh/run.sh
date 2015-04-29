#!/bin/bash
if [ "$DISABLE_SSL" = "true" ]; then
    ln -sf /etc/nginx/sites-available/cozy.conf /etc/nginx/sites-enabled/
else
    ln -sf /etc/nginx/sites-available/cozy-ssl.conf /etc/nginx/sites-enabled/
fi

while ! curl -s $COZYAPPS_HOST:$COZYAPPS_PORT; do sleep 5; done
/usr/local/bin/supervisord -n -c /etc/supervisord.conf