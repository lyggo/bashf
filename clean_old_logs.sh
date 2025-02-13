#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本清理超过30天的日志文件。"
    echo "用法：./clean_old_logs.sh <日志目录>"
    exit 1
fi

find "$1" -name "*.log" -type f -mtime +30 -exec rm -f {} \;
echo "超过30天的日志文件已清理。"
