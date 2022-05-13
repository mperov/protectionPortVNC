#!/bin/bash

#
# Copyright (c) 2022 Maksim Perov <coder@frtk.ru>
#

PATTERN="0:59"
PATTERN_PATH="/usr/bin/Xvnc"

VNC_SRV=`netstat -tulpn 2>/dev/null | grep $PATTERN | awk '{print $7}'`

for srv in $VNC_SRV; do
  if [[ "$srv" != "-" ]]; then
    pid=`echo $srv | awk -F '/' '{print $1}'`
    name=`echo $srv | awk -F '/' '{print $2}'`
    path=`readlink -f /proc/$pid/exe`
    if [[ "$path" != "$PATTERN_PATH" ]]; then
        echo "$pid"
        `dirname $0`/sendMessage.sh "`ps aux | grep $pid | grep $path`"
    fi
  fi
done
