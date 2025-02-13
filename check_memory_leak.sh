#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查内存占用情况。"
    echo "用法：./check_memory_leak.sh"
    exit 1
fi

ps aux --sort=-%mem | head -n 10
