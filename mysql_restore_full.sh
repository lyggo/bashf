#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本恢复MySQL数据库。"
    echo "用法：./mysql_restore_full.sh <数据库名> <备份文件>"
    exit 1
fi

DATABASE=$1
BACKUP_FILE=$2

# 恢复数据库
mysql -u root -p "$DATABASE" < "$BACKUP_FILE"

if [ $? -eq 0 ]; then
    echo "数据库 $DATABASE 从备份文件 $BACKUP_FILE 恢复成功。"
else
    echo "数据库 $DATABASE 恢复失败。"
fi
