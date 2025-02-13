#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查文件的大小。"
    echo "用法：./check_filesize.sh <文件路径>"
    exit 1
fi

filesize=$(du -sh "$1" | cut -f1)
echo "文件 $1 的大小是 $filesize。"
