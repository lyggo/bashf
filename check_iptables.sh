#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查iptables防火墙状态。"
    echo "用法：./check_iptables.sh"
    exit 1
fi

sudo iptables -L
