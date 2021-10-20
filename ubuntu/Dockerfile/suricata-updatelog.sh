
mkdir -p /var/log/suricata/elk/

touch /var/log/suricata/elk/eve.json


while true; do

cat /var/log/suricata/eve.json | grep "signature" >> /var/log/suricata/elk/eve.json
echo "Logging 2..."  >> /var/log/suricata/elk/eve.json
sed -i "s/\\\r\\\n/\",\"/g" /var/log/suricata/elk/eve.json
sed -i 's/: /\":\"/g' /var/log/suricata/elk/eve.json
sed -i 's/,"",""//g' /var/log/suricata/elk/eve.json

  sleep 5;
done

