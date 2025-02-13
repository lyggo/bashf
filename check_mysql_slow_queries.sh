#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本查看MySQL慢查询日志。"
    echo "用法：./check_mysql_slow_queries.sh"
    exit 1
fi

cat /var/log/mysql/mysql-slow.log | tail -n 10
