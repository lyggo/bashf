#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本根据文件名查找文件。"
    echo "用法：./find_files.sh <文件名>"
    exit 1
fi

find / -name "$1" 2>/dev/null
