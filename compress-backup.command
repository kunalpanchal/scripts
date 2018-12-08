# Add this file within the folder and run to backup all content to a folder "backup"

rm -rf backup;
current_date_time="`date +%Y%m%d%H%M%S`";
zipLabel="APP_BACKUP_${current_date_time}.zip"
zip -r $zipLabel .
mkdir backup;
mv $zipLabel backup;
