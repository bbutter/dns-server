FROM ubuntu:16.04
RUN echo "I am DNS" > /var/dns.log
# RUN sudo su /
#   apt-get install bind9 -y /
#
CMD ["/bin/bash"]
