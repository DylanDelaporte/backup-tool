# backup-tool
Backup a list of folders inside a zip

## Installation

1. Get ready for backup
```bash
git remote add origin https://github.com/DylanDelaporte/backup-tool.git
cd backup-tool
chmod +x configure.sh
./configure.sh #before executing you can modify cron task in this file
```
2. Add absolute path of folders to backup inside `/usr/local/bin/backup-tool/directories` file

Also : to start a backup when you want execute script `/usr/local/bin/backup-tool/start-backup`
