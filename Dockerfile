FROM ubuntu:16.04

EXPOSE 8080 61616

# Ubuntu packages installation
COPY baseline /baseline
RUN /baseline/setup.sh

# Service configuration
COPY preflight /preflight
RUN /preflight/setup.sh

CMD ["/bin/bash", "/preflight/boot.sh"]
