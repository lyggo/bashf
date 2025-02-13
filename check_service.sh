#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查指定服务是否在运行。"
    echo "用法：./check_service.sh <服务名称>"
    exit 1
fi

service_status=$(systemctl is-active "$1")
if [ "$service_status" == "active" ]; then
    echo "$1 服务正在运行。"
else
    echo "$1 服务未运行。"
fi
