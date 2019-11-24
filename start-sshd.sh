#!/bin/sh
if [ -n "$AUTHORIZED_KEYS" ]; then
    mkdir -p /home/docker/.ssh;
    echo $AUTHORIZED_KEYS > /home/docker/.ssh/authorized_keys;
    chmod 700 /home/docker/.ssh;
    chmod 600 /home/docker/.ssh/authorized_keys;
    echo "Starting sshd";
    sudo /usr/sbin/sshd -De;
else
    echo "no AUTHORIZED_KEYS defined, starting bash";
    /bin/bash;
fi
