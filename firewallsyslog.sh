#!/bin/sh
# set logging
esxcli system syslog config set --loghost='syslog-server.com:12345'
esxcli system syslog reload

# set firewall
cp temp.xml /etc/vmware/firewall/
esxcli network firewall refresh
esxcli network firewall unload
esxcli network firewall load
