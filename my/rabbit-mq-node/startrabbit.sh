#!/bin/bash

if [ -z "$CLUSTERED" ]; then
	# if not clustered then start it normally as if it is a single server
	echo 'CLUSTERED'
	/usr/sbin/rabbitmq-server
else
	if [ -z "$CLUSTER_WITH" ]; then
		# If clustered, but cluster with is not specified then again start normally, could be the first server in the
		# cluster
		echo 'CLUSTER_WITH'
		/usr/sbin/rabbitmq-server
	else
		/usr/sbin/rabbitmq-server -detached
		rabbitmqctl stop_app
		if [ -z "$RAM_NODE" ]; then
		  echo 'RAM_NODE'
			rabbitmqctl join_cluster rabbit@$CLUSTER_WITH
		else
		  echo 'OTHER_NODE'
			rabbitmqctl join_cluster --ram rabbit@$CLUSTER_WITH
		fi
		rabbitmqctl start_app

		# Tail to keep the a foreground process active..
		top
		#tail -f /var/log/rabbitmq/rabbit\@$HOSTNAME.log
	fi
fi
