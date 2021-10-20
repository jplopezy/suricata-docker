cat /var/log/suricata/eve.json | grep "signature" >> /var/log/suricata/elk/eve2.json
sed -i "s/\\\r\\\n/\",\"/g" /var/log/suricata/elk/eve2.json
sed -i 's/: /\":\"/g' /var/log/suricata/elk/eve2.json
sed -i 's/,"",""//g' /var/log/suricata/elk/eve2.json
