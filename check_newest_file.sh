#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本查找指定目录中最新修改的文件。"
    echo "用法：./check_newest_file.sh <目录>"
    exit 1
fi

find "$1" -type f -exec stat --format '%Y %n' {} \; | sort -n | tail -n 1
