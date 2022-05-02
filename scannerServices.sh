#!/bin/bash

#
# Copyright (c) 2022 Maksim Perov <coder@frtk.ru>
#

PATTERN="0:59"

VNC_SRV=`netstat -tulpn 2>/dev/null | grep $PATTERN | awk '{print $7}'`

for srv in $VNC_SRV; do
  if [[ "$srv" != "-" ]]; then
    pid=`echo $srv | awk -F '/' '{print $1}'`
    name=`echo $srv | awk -F '/' '{print $2}'`
    if [[ "$name" != "Xvnc" ]]; then
        echo "ALERT! - $name must be killed: kill -9 $pid"
    fi
  fi
done
