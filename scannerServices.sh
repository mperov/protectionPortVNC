#!/bin/bash

#
# Copyright (c) 2022 Maksim Perov <coder@frtk.ru>
#

PATTERN="0:59"

VNC_SRV=`netstat -tulpn 2>/dev/null | grep $PATTERN | awk '{print $7}'`

for srv in $VNC_SRV; do
  echo $srv
done
