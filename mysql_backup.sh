#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本备份MySQL数据库。"
    echo "用法：./mysql_backup.sh <数据库名>"
    exit 1
fi

mysqldump -u root -p "$1" > "${1}_backup_$(date +%Y%m%d).sql"
echo "数据库 $1 已备份为 ${1}_backup_$(date +%Y%m%d).sql"
