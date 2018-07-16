# backup-tool
Backup a list of folders inside a zip

## Installation

1. Get ready for backup
```bash
git remote add origin https://github.com/DylanDelaporte/backup-tool.git
cd backup-tool
chmod +x start-backup
```
2. Add absolute path of folders to backup inside `directories` file
3. Run the script `./start-backup`
4. Automate your backups with a cron task
```bash
crontab -e
0 1 * * * /path/to/start-backup #everyday at 1am
```
