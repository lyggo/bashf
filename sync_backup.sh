#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本使用rsync同步文件夹到远程服务器。"
    echo "用法：./sync_backup.sh <源目录> <目标目录>"
    exit 1
fi

rsync -avz "$1" "$2"
echo "文件已同步到远程服务器。"
