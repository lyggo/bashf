#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本进行MySQL完全备份并压缩为 tar.gz 格式。"
    echo "用法：./mysql_full_backup_with_compression.sh <数据库名>"
    exit 1
fi

DATABASE=$1
BACKUP_DIR="./mysql_backups"
BACKUP_FILE="${BACKUP_DIR}/${DATABASE}_full_backup_$(date +%Y%m%d).tar.gz"

# 完全备份并压缩
mysqldump -u root -p "$DATABASE" | gzip > "$BACKUP_FILE"

if [ $? -eq 0 ]; then
    echo "数据库 $DATABASE 完全备份成功，保存为 $BACKUP_FILE"
else
    echo "数据库 $DATABASE 完全备份失败。"
fi
