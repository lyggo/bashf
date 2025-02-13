#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本清理MySQL数据库中过期的记录。"
    echo "用法：./mysql_cleanup.sh <数据库名>"
    exit 1
fi

mysql -u root -p -e "DELETE FROM $1 WHERE created_at < NOW() - INTERVAL 30 DAY;"
echo "数据库 $1 中超过30天的数据已清理。"
