#!/bin/sh

create_rabbitmq_user(){
  USER=$1
  PASS=$2
  ROLE=$3
  if rabbitmqctl list_users -sq | grep -q $USER ; then
    echo "User $USER already exits"
  else
    echo "Creating user $USER with password $PASS and role $ROLE"
    rabbitmqctl add_user $USER $PASS --timeout 5000 && \
    rabbitmqctl set_user_tags $USER $ROLE && \
    rabbitmqctl set_permissions -p / $USER ".*" ".*" ".*"
  fi
}

wait_rabbitmq(){
  PORT=$1
  printf "Waiting Rabbitmq "
  until curl -sf http://localhost:$PORT > /dev/null
  #until rabbitmq-diagnostics ping > /dev/null
  do
    sleep 1
    printf "."
  done
}

rabbitmq-server &
PID=$!
echo "rabbitmq-server pid=$PID"
wait_rabbitmq 15672

create_rabbitmq_user $RABBITMQ_DEFAULT_USER $RABBITMQ_DEFAULT_PASS administrator
create_rabbitmq_user guest guest administrator

tail -f /proc/$PID/fd/*