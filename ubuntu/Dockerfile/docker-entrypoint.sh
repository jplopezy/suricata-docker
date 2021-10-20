#!/bin/sh

# Update suricata rules
suricata-update


crontab -l > mycron

echo "0 */6 * * * /etc/suricata/suricata-update.sh" >> mycron

sh /etc/suricata/suricata-updatelog.sh

crontab mycron

rm mycron

  
mkdir -p /var/log/suricata/elk/

touch /var/log/suricata/elk/eve.json




echo "Logging..."  >> /var/log/suricata/elk/eve.json

# Started suricata
/usr/bin/suricata -c /etc/suricata/suricata.yaml -i eth0

