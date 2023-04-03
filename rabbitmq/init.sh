#!/bin/sh
( sleep 5 && \
rabbitmqctl add_user $RABBITMQ_DEFAULT_USER $RABBITMQ_DEFAULT_PASS && \
rabbitmqctl set_user_tags $RABBITMQ_DEFAULT_USER administrator && \
rabbitmqctl set_permissions -p / $RABBITMQ_DEFAULT_USER  ".*" ".*" ".*" ) & \
rabbitmq-server