#!/bin/bash

DbName=wordpress;
Work_dir=/backup/mysql

#create database and user wordpress:
mysql -e "CREATE USER wordpress@'%' IDENTIFIED WITH 'caching_sha2_password' BY 'WPpass#2024';"
mysql -e "CREATE DATABASE wordpress;"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO wordpress@'%';"
mysql -e "FLUSH PRIVILEGES;"

echo -e 'Databese name =\e[1;31m '$DbName'\e[1;m';
# Mount backup NFS
mkdir /backup && mount -t nfs mowsprx1:/backup /backup
# Find last backup.
last_backup_file=`ls -1 $Work_dir | grep "backup_" | sort | tail -n 1`;
# Create temp dir for store unpacked files.
mkdir -p $Work_dir/tempo_for_restore;
# Unpack files from last backup.
tar -xf $Work_dir/$last_backup_file -C $Work_dir/tempo_for_restore/;

## Create databese .
#echo "CREATE DATABASE $DbName;" | /usr/bin/mysql

# find all tables backup files and send it to database
find "$Work_dir/tempo_for_restore" -type f | while read -r file; do
cat "$file" | mysql $DbName
done

# remove temporary files and unmont NFS.
rm -r $Work_dir/tempo_for_restore
umount /backup && rmdir /backup

echo -e '\e[1;32mDatabase restore is done!\e[1;m';
