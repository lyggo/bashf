#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本同步系统时间。"
    echo "用法：./sync_time.sh"
    exit 1
fi

sudo ntpdate -u pool.ntp.org
echo "时间已同步。"
