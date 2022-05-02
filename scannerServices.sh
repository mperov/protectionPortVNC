#!/bin/bash

#
# Copyright (c) 2022 Maksim Perov <coder@frtk.ru>
#

VNC_SRV=`netstat -tulpn 2>/dev/null | grep 0:59 | awk '{print $7}'`

for srv in $VNC_SRV; do
  echo $srv
done
