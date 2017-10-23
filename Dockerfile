FROM ubuntu:16.04
ENV DNS_UPDATES_SECRET_KEY="expected-to-be-passed-at-runtime"
RUN apt-get update -y && \
  apt-get install bind9 -y
EXPOSE 53
COPY start-dns-server.sh /opt/bind/start-dns-server.sh
CMD ["/bin/bash", "/opt/bind/start-dns-server.sh"]
