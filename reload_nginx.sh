#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本重载Nginx配置。"
    echo "用法：./reload_nginx.sh"
    exit 1
fi

sudo nginx -t && sudo systemctl reload nginx
echo "Nginx配置已重载。"
