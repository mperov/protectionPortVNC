#!/bin/bash

#
# Copyright (c) 2022 Maksim Perov <coder@frtk.ru>
#

SUBJECT="ALERT: illegal using of VNC port"
SERVER=""
EMAIL=""
USER=""
PASSWORD=""
RECIPIENTS=""

echo "$1" | mailx -v -r "${EMAIL}" -s "${SUBJECT}" \
-S smtp="${SERVER}" \
-S smtp-use-starttls \
-S smtp-auth=login \
-S smtp-auth-user="${USER}" \
-S smtp-auth-password="${PASSWORD}" \
-S nss-config-dir="/etc/pki/nssdb/" \
-S ssl-verify=ignore \
${RECIPIENTS} \
&> /dev/null
