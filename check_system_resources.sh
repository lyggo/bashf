#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查系统资源使用情况。"
    echo "用法：./check_system_resources.sh"
    exit 1
fi

echo "CPU 使用情况："
top -bn1 | grep "Cpu(s)"
echo "内存 使用情况："
free -h
echo "磁盘 使用情况："
df -h
echo "网络 使用情况："
ifstat
