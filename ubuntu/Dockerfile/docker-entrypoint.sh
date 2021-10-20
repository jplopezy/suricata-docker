#!/bin/sh

# Update suricata rules
suricata-update


crontab -l > mycron

echo "0 */6 * * * /etc/suricata/suricata-update.sh" >> mycron
echo "*/1 * * * * * /etc/suricata/suricata-updatelog.sh" >> mycron

crontab mycron

rm mycron

mkdir /var/log/suricata/elk

echo "Logging..."  >> /var/log/suricata/elk/eve.json

# Started suricata
/usr/bin/suricata -c /etc/suricata/suricata.yaml -i eth0

