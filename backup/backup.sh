# Backs up docker volumes
# Backup destination is ~/<day-of-month>
sudo rsync -avvvz --delete /volumes/* pi@192.168.1.104:~/$(date +%d)
