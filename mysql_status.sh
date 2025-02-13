#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本查看MySQL服务的状态信息。"
    echo "用法：./mysql_status.sh"
    exit 1
fi

mysqladmin -u root -p status
