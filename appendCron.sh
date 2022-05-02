#!/bin/bash

#
# Copyright (c) 2022 Maksim Perov <coder@frtk.ru>
#

crontab -l > /tmp/crontab_root; echo "* * * * * /bin/kill -9 \`/root/protectionPortVNC/scannerServices.sh\` 2> /dev/null" >> /tmp/crontab_root
crontab /tmp/crontab_root
