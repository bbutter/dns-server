FROM ubuntu:16.04
RUN apt-get update -y && \
  apt-get install bind9 -y
EXPOSE 53
CMD ["/usr/sbin/named", "-u", "bind", "-g", "-d", "1"]
