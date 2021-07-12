# LOG TO JOHN
su - john
crontab -e

# ADD JOB TO
# */30 9-17 * * 0-5 echo $(date) >> /home/john/dates.log
#

# LOG TO ROOT
crontab -e

# ADD JOB RO 
0 8 * * * sudo /usr/bin/john-backup.sh
