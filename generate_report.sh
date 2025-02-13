#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查rsync服务是否在运行。"
    echo "用法：./check_rsync.sh"
    exit 1
fi

service_status=$(systemctl is-active rsync)
if [ "$service_status" == "active" ]; then
    echo "rsync服务正在运行。"
else
    echo "rsync服务未运行。"
fi
