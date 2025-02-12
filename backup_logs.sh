#!/bin/bash

#Переменные 
BACKUP_FILE="/var/log/mia"
TARGET_FILE="access_log"

BACKUP_DIR="/path/to/backup"
MAX_BACKUPS=3
DATE=$(date +%Y%m%d)
ARCHIVE="$BACKUP_DIR/$LOG_FILE-$DATE.tar.gz"

# Архивируем лог файлы
tar -czf "$ARCHIVE" "$LOG_DIR/$LOG_FILE"

# Создаем архив с сжатием
tar -cvzf "$DEST_DIR/$ARCHIVE_NAME" -C "$BACKUP_FILE" .

# Удаляем архивы старше 3 дней
find "$TARGET_FILE" -name "backup_log_*.tar.gz" -mtime +3 -exec rm {} \;

# Делаю файл исполняемым
chmod +x backup_logs.sh


