#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本清理超过30天未登录的用户。"
    echo "用法：./user_cleanup.sh"
    exit 1
fi

inactive_users=$(awk -F: '{if ($3>=1000 && $3<65534) print $1}' /etc/passwd)

for user in $inactive_users; do
    last_login=$(lastlog -u "$user" | tail -n 1 | awk '{print $4}')
    if [ "$last_login" != "Never" ]; then
        echo "用户 $user 超过30天未登录，准备删除..."
        sudo userdel "$user"
    fi
done
