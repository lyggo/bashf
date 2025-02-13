#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本添加一个定时任务调度。"
    echo "用法：./schedule_task.sh <分钟> <小时> <日期> <月份> <星期几> <命令>"
    exit 1
fi

echo "$1 $2 $3 $4 $5 $6" | crontab -
echo "定时任务已添加。"
