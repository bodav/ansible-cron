#!/bin/sh

ansible-pull -U $REPO -d /opt/cron -i hosts

echo $ANSIBLE_USER

echo "########################"
crontab -l
echo "########################"

crond -f -l 0