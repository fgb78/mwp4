#!/bin/sh
if [ ! -f UUID ]; then
  UUID="db7f7125-0cf8-43f8-85dd-b05d0cafe4c0"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

