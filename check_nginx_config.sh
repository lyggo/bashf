#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查Nginx配置文件是否正确。"
    echo "用法：./check_nginx_config.sh"
    exit 1
fi

sudo nginx -t
