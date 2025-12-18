#!/bin/busybox sh

if [ "$1" != "bound" ]
then
    exit 0
fi

ip_conf="${ip}:${serverid}:${router}:${subnet}:${hostname}"
ip_conf="${ip_conf}:${interface}:off:${dns}"

. /functions
configure_intf "${interface}" "${ip_conf}"
