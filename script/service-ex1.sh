#!/bin/bash

#chkconfig: 35 96 03
#description: test service
. /etc/init.d/functions
case $1 in
start)
	touch /var/lock/subsys/testsrv
	action "Starting testsrv" true
	;;
stop)
	rm -f /var/lock/subsys/testsrv
	action "Stopping testsrv" true
	;;
restart)
	action "Stopping testsrv" true
	action "Starting testsrv" true
	;;
status)
	if [ -f /var/lock/subsys/testsrv ];then
		echo testsrv is running...
	else
		echo testsrv is stopped
	fi
	;;
*)
	echo "Usage: /etc/init.d/testsrv {start|stop|restart|status}"
esac
