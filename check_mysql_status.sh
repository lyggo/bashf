#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查MySQL服务是否在运行。"
    echo "用法：./check_mysql_status.sh"
    exit 1
fi

service_status=$(systemctl is-active mysql)
if [ "$service_status" == "active" ]; then
    echo "MySQL服务正在运行。"
else
    echo "MySQL服务未运行。"
fi
