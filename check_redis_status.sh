#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查Redis服务是否在运行。"
    echo "用法：./check_redis_status.sh"
    exit 1
fi

service_status=$(systemctl is-active redis)
if [ "$service_status" == "active" ]; then
    echo "Redis服务正在运行。"
else
    echo "Redis服务未运行。"
fi
