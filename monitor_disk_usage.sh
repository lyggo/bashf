#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本监控磁盘使用情况。"
    echo "用法：./monitor_disk_usage.sh"
    exit 1
fi

disk_usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
if [ $disk_usage -gt 80 ]; then
    echo "警告：磁盘使用率已超过80%！"
else
    echo "磁盘使用率正常。"
fi
