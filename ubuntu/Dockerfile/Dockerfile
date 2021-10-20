FROM ubuntu:20.04

RUN  apt-get update
RUN  apt-get upgrade -y
RUN apt-get -y install cron
RUN  apt -y install software-properties-common 
RUN  add-apt-repository ppa:oisf/suricata-stable
RUN  apt-get update
RUN  apt-get upgrade -y
RUN  apt-get -y install suricata 
RUN  apt-get -y install libpcre3-dbg libpcre3-dev autoconf automake libtool libpcap-dev libnet1-dev libyaml-dev zlib1g-dev libcap-ng-dev libmagic-dev libjansson-dev libjansson4 



COPY suricata-update.sh /etc/suricata/suricata-update.sh
COPY suricata-updatelog.sh /etc/suricata/suricata-updatelog.sh



COPY docker-entrypoint.sh /tmp/docker-entrypoint.sh

RUN chmod +x /tmp/docker-entrypoint.sh

COPY suricata.yaml /etc/suricata/suricata.yaml

RUN ln -sf /dev/stdout /var/log/suricata/suricata.log