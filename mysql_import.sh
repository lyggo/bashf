#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本导入MySQL数据库。"
    echo "用法：./mysql_import.sh <数据库名> <SQL文件>"
    exit 1
fi

DATABASE=$1
SQL_FILE=$2

# 创建数据库（如果不存在）
mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS $DATABASE;"

# 导入数据库
mysql -u root -p "$DATABASE" < "$SQL_FILE"

if [ $? -eq 0 ]; then
    echo "数据库 $DATABASE 从 $SQL_FILE 导入成功。"
else
    echo "数据库 $DATABASE 导入失败。"
fi
