FROM ubuntu:16.04
RUN apt-get update -y && \
  apt-get install bind9 -y
COPY named.conf.local /etc/bind/named.conf.local
COPY binarybutter.com.db /etc/bind/zones/binarybutter.com.db
COPY rev.3.2.1.in-addr.arpa /etc/bind/zones/rev.3.2.1.in-addr.arpa
COPY resolv.conf /etc/resolv.conf
EXPOSE 53
CMD ["/usr/sbin/named", "-u", "bind", "-g", "-d", "1"]
