#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本备份指定的文件或目录。"
    echo "用法：./backup.sh <文件或目录路径>"
    exit 1
fi

tar -czf backup_$(date +%F).tar.gz "$1"
