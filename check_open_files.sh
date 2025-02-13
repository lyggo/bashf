#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查当前系统打开的文件数。"
    echo "用法：./check_open_files.sh"
    exit 1
fi

lsof | wc -l
