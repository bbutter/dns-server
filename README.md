# dns-server
DNS Server using bind9 on Ubuntu docker image

Usage:

```
docker run --rm -p 53:53/tcp -p 53:53/udp -v $(pwd)/named.conf.local:/etc/bind/named.conf.local -v  $(pwd)/binarybutter.com.db:/etc/bind/zones/binarybutter.com.db -v $(pwd)/rev.3.2.1.in-addr.arpa:/etc/bind/zones/rev.3.2.1.in-addr.arpa -v  $(pwd)/resolv.conf:/etc/resolv.conf -e DNS_UPDATES_SECRET_KEY="MgfTV1MDUBzM6gqtp4zEZOSN0+PauekQelJB7iAY+RHjYXATDZJMrzu9lp1gG2z+Ko0rJoOpYYJzvYbLcyUaLg==" --name bbutter-dns-server bbutter/dns-server;latest
```

Note : The secret key is a fake key and will not work.
