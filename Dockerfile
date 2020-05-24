FROM alpine:3
RUN apk add openntpd && mkdir -m 1777 /var/empty/tmp
COPY ./ntpd.conf /etc/ntpd.conf
EXPOSE 123/udp
ENTRYPOINT ["/usr/sbin/ntpd", "-d", "-f", "/etc/ntpd.conf"]
