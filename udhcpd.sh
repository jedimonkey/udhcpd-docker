#!/bin/sh

if [ ! -f "/data/udhcpd.conf" ]
then
	echo 'setting udhcpd.conf with default'
	cp /etc/udhcpd.conf /data/udhcpd.conf	
fi

/usr/sbin/udhcpd -f /data/udhcpd.conf
