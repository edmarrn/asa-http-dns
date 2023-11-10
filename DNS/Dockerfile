FROM ubuntu/bind9

RUN apt update

RUN apt upgrade -y

RUN apt install dnsutils -y

COPY db.asa.br /etc/bind

COPY named.conf.local /etc/bind
