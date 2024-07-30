

  ansible-pull -U https://github.com/bodav/ansible-cron.git -d /srv/ansible-cron -i hosts --only-if-changed

  ansible-playbook --limit dev playbooks/ping.yml