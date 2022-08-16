FROM debian:11

RUN apt-get update && apt-get dist-upgrade -y && apt-get install dnsmasq -y

EXPOSE 53

ENTRYPOINT ["/usr/sbin/dnsmasq", "-d"]
