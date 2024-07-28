#!/bin/sh

ansible-pull -U $REPO -d /opt/cron

echo "########################"
crontab -l
echo "########################"

crond -f -l 0