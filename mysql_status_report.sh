#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本生成MySQL的状态报告。"
    echo "用法：./mysql_status_report.sh"
    exit 1
fi

REPORT_FILE="mysql_status_report_$(date +%Y%m%d).txt"

# 生成报告
mysql -u root -p -e "SHOW STATUS;" > "$REPORT_FILE"

echo "MySQL状态报告已生成，保存在 $REPORT_FILE"
