#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查并自动重启服务。"
    echo "用法：./check_service_restart.sh <服务名>"
    exit 1
fi

service_status=$(systemctl is-active "$1")
if [ "$service_status" != "active" ]; then
    echo "$1 服务未运行，正在重启..."
    sudo systemctl restart "$1"
    echo "$1 服务已重启。"
else
    echo "$1 服务正在运行。"
fi
