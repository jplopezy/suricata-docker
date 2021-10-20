#!/bin/sh

# Update suricata rules
suricata-update


# Started suricata
/usr/bin/suricata -c /etc/suricata/suricata.yaml -i eth0

