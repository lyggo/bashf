#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本清理系统缓存。"
    echo "用法：./clear_cache.sh"
    exit 1
fi

sudo sync; sudo echo 3 > /proc/sys/vm/drop_caches
