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

HEALTHCHECK --interval=30s --timeout=3s --retries=1 CMD rabbitmq-diagnostics check_port_connectivity

# Define default command
CMD ["/init.sh"]