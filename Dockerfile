FROM debian:10-slim
RUN apt-get update && apt-get -y install openntpd \ 
    && mkdir /var/run/openntpd \ 
    && apt-get clean
COPY ./ntpd.conf /etc/ntpd.conf
EXPOSE 123/udp
ENTRYPOINT ["/usr/sbin/ntpd", "-d", "-f", "/etc/ntpd.conf"]
