FROM rabbitmq:3-management

# Define environment variables.
ENV RABBITMQ_DEFAULT_USER admin
ENV RABBITMQ_DEFAULT_PASS admin

ADD init.sh /init.sh
RUN chmod +x /init.sh

EXPOSE 5672 15672

# Define default command
CMD ["/init.sh"]