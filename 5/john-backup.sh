# Validated you are executed by root

if [ -f /root/backups ]
then
        echo "/root/backups should not be a file!"
        exit 0
fi

if [ ! -d /root/backups ]
then        
        mkdir /root/backups
fi

time=$(date | awk '{print $5}')

back_path="/root/backups/${time}.zip"

echo "creating backup - ${back_path}"

tar -cvzf ${back_path} /home/john/
