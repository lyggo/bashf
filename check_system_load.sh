#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查系统负载情况。"
    echo "用法：./check_system_load.sh"
    exit 1
fi

uptime | awk -F 'load average:' '{ print "当前系统负载: " $2 }'
