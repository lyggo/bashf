#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查系统时间。"
    echo "用法：./check_time.sh"
    exit 1
fi

date
