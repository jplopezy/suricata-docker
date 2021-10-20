

while true; do


sed -i "s/\\\r\\\n/\",\"/g" /var/log/suricata/eve.json
sed -i 's/: /\":\"/g' /var/log/suricata/eve.json
sed -i 's/,"",""//g' /var/log/suricata/eve.json

  sleep 5;
done

