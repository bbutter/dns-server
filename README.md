# dns-server
DNS Server using bind9 on Ubuntu docker image

Usage:

```
docker run -p 53:53/tcp -p 53:53/udp \
-v  named.conf.local:/etc/bind/named.conf.local \
-v  binarybutter.com.db:/etc/bind/zones/binarybutter.com.db \
-v  rev.3.2.1.in-addr.arpa:/etc/bind/zones/rev.3.2.1.in-addr.arpa \
-v  resolv.conf:/etc/resolv.conf \
 --name bbutter-dns-server bbutter/dns-server
 ```
