#!/bin/bash

set -e

python -m pip install -r requirements.txt

echo "Initializing ..."
supervisord -n -c /etc/supervisord.conf &> /dev/null &
sleep 10
echo "Initialization done."

exec "$@"
