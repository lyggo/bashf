#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查指定端口是否开放。"
    echo "用法：./check_ports.sh <端口号>"
    exit 1
fi

nc -zv 127.0.0.1 "$1" 2>&1 | grep succeeded
