#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查FTP服务是否在运行。"
    echo "用法：./check_ftp.sh"
    exit 1
fi

service_status=$(systemctl is-active vsftpd)
if [ "$service_status" == "active" ]; then
    echo "FTP服务正在运行。"
else
    echo "FTP服务未运行。"
fi
