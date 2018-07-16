#!/bin/bash

path=/usr/local/bin

echo "====SETUP BACKUP-TOOL===="

if [ "$EUID" -ne 0 ]
then
	echo "Please run as root"
	exit 1
fi

mkdir ${path}/backup-tool
cp start-backup ${path}/backup-tool
cp directories ${path}/backup-tool

chmod +x ${path}/backup-tool/start-backup

echo "Backup scheduled each day at 1am"

crontab -l > mycron
echo "0 1 * * * sh ${path}/backup-tool/start-backup" >> mycron

crontab mycron
rm mycron

