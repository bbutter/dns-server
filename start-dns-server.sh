#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail

if [[ -z "${DNS_UPDATES_SECRET_KEY}" ]]; then
    echo "DNS_UPDATES_SECRET_KEY not defined. Please define it in environment variables"
    exit 1
fi

named_conf_local_templated_file="/etc/bind/named.conf.local"

NAMED_CONF_LOCAL_TEMPLATED=$(cat "${named_conf_local_templated_file}" \
  | sed -e "s!TEMPLATED_DNS_UPDATES_SECRET_KEY!${DNS_UPDATES_SECRET_KEY}!g")

echo "${NAMED_CONF_LOCAL_TEMPLATED}" > /etc/bind/named.conf.local

echo "Starting bind9 server ..."
/usr/sbin/named -u bind -g -d 1
