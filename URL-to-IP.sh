#!/usr/bin/env bash
#
# convert URLs to IPs

for i in $(cat urlList.txt) ; do dig +short $i ; done > iplist.txt
for i in $(cat iplist.txt) ; do echo "deny   ip host $i any" ; done

