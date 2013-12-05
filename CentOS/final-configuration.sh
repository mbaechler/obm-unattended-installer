#!/bin/bash

service jetty6 restart > /var/log/messages 2>&1

### Activating services on boot
chkconfig cyrus-imapd on
chkconfig obm-tomcat on
chkconfig jetty6 on
chkconfig obm-satellite on
chkconfig postgresql on
chkconfig saslauthd on
chkconfig slapd on

### Restarting services
service obm-tomcat restart
service jetty6 restart
service obm-satellite restart
setenforce 0

### System configuration tweaks
sed -i s/SELINUX=.*/SELINUX\=disabled/g /etc/selinux/config
setsebool -P httpd_can_network_connect 1
service iptables stop
chkconfig iptables off
service ip6tables stop
chkconfig ip6tables off
echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
/etc/init.d/obm-tomcat stop
/etc/init.d/obm-tomcat start
