#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本添加一个新用户并设置密码。"
    echo "用法：./add_user.sh <用户名>"
    exit 1
fi

sudo useradd "$1"
sudo passwd "$1"
echo "用户 $1 已添加。"
