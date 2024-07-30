FROM alpine:edge

RUN apk add git python3 ansible ansible-lint py3-pip openssh sshpass
RUN rm -f /tmp/* /etc/apk/cache/*

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENV ANSIBLE_VERBOSITY=2
ENV ANSIBLE_HOST_KEY_CHECKING=false
ENV ANSIBLE_INVENTORY=/opt/cron/hosts.yaml
ENV ANSIBLE_STDOUT_CALLBACK=yaml

ENTRYPOINT ["./entrypoint.sh"]