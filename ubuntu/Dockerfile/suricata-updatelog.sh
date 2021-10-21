

touch /var/log/suricata/eve2.json


while true; do

cat /var/log/suricata/eve.json | grep "payload_printable" >  /var/log/suricata/eve2.json
sed -i "s/\\\r\\\n/\",\"/g" /var/log/suricata/eve2.json
sed -i 's/: /\":\"/g' /var/log/suricata/eve2.json
sed -i 's/,"",""//g' /var/log/suricata/eve2.json

 sleep 2;
done