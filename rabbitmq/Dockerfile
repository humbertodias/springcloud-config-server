FROM rabbitmq:3-management

# Define environment variables.
ENV RABBITMQ_DEFAULT_USER admin
ENV RABBITMQ_DEFAULT_PASS admin

RUN apt update -y && apt -y install curl

ADD init.sh /init.sh
RUN chmod +x /init.sh

# AMQP protocol port
EXPOSE 5672
# HTTP management UI
EXPOSE 15672
# HTTP prometheus
EXPOSE 15692

HEALTHCHECK --interval=10s --timeout=3s --retries=1 CMD rabbitmq-diagnostics check_port_connectivity

# Plugins
RUN rabbitmq-plugins enable rabbitmq_prometheus

# Define default command
CMD ["/init.sh"]