#!/bin/sh

# Update suricata rules
suricata-update


crontab -l > mycron

echo "0 */6 * * * /etc/suricata/suricata-update.sh" >> mycron

crontab mycron

rm mycron

nohup  sh /etc/suricata/suricata-updatelog.sh  &

# Started suricata
/usr/bin/suricata -c /etc/suricata/suricata.yaml -i eth0




