sudo apt-get install mysql-server
sudo systemctl status mysql.service 
sudo systemctl enable mysql.service 
sudo systemctl stop rsyslog.service
sudo systemctl disable rsyslog.service

sudo reboot
sudo systemctl status rsyslog.service
sudo systemctl status mysql.service

sudo apt install apache2
sudo echo "<h3>Hello weave acadamy</h3>" >> /var/www/html/index.html
sudo systemctl restart apache2.service

sudo systemctl start rsyslog.service
sudo systemctl enable rsyslog.service
sudo systemctl status rsyslog.service
