

#while true; do

#cat /var/log/suricata/eve.json | grep "signature" >> /var/log/suricata/elk/eve.json

#echo "Logging 2..."  >> /var/log/suricata/eve.json
#sed -i "s/\\\r\\\n/\",\"/g" /var/log/suricata/eve.json
#sed -i 's/: /\":\"/g' /var/log/suricata/eve.json
#sed -i 's/,"",""//g' /var/log/suricata/eve.json

 # sleep 5;
#done

