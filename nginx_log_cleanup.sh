#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本清理超过30天的Nginx日志文件。"
    echo "用法：./nginx_log_cleanup.sh <Nginx日志目录>"
    exit 1
fi

find "$1" -name "*.log" -type f -mtime +30 -exec rm -f {} \;
echo "超过30天的Nginx日志文件已清理。"
