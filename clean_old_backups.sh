#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本清理超过30天的备份文件。"
    echo "用法：./clean_old_backups.sh <备份目录>"
    exit 1
fi

find "$1" -type f -name "*.bak" -mtime +30 -exec rm -f {} \;
echo "超过30天的备份文件已清理。"
