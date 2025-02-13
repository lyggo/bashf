#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查指定的系统服务状态。"
    echo "用法：./check_service_status.sh <服务名>"
    exit 1
fi

status=$(systemctl status "$1" | grep Active)
echo "服务 $1 状态: $status"
