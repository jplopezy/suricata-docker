#!/bin/sh

# Update suricata rules
suricata-update


crontab -l > mycron

echo "0 */6 * * * /etc/suricata/suricata-update.sh" > /dev/null 2>&1
echo "*/1 * * * * * /etc/suricata/suricata-updatelog.sh" /dev/null 2>&1

crontab mycron

rm mycron

# Started suricata
/usr/bin/suricata -c /etc/suricata/suricata.yaml -i eth0

