#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本检查当前用户是否有sudo权限。"
    echo "用法：./check_sudo.sh"
    exit 1
fi

sudo -v
if [ $? -eq 0 ]; then
    echo "当前用户具有sudo权限。"
else
    echo "当前用户不具备sudo权限。"
fi
