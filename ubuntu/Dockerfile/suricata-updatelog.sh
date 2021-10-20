sed -i "s/\\\r\\\n/\",\"/g" /var/log/suricata/eve.json
sed -i 's/: /\":\"/g' /var/log/suricata/eve.json
sed -i 's/,"",""//g' /var/log/suricata/eve.json
