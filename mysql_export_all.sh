#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本导出MySQL实例中的所有数据库。"
    echo "用法：./mysql_export_all.sh"
    exit 1
fi

BACKUP_DIR="./mysql_backups"
mkdir -p "$BACKUP_DIR"

# 获取所有数据库的名称
DATABASES=$(mysql -u root -p -e 'SHOW DATABASES;' | grep -Ev "(information_schema|performance_schema|mysql|sys)")

# 导出每个数据库
for DATABASE in $DATABASES; do
    BACKUP_FILE="${BACKUP_DIR}/${DATABASE}_backup_$(date +%Y%m%d).sql"
    mysqldump -u root -p "$DATABASE" > "$BACKUP_FILE"
    if [ $? -eq 0 ]; then
        echo "数据库 $DATABASE 导出成功，保存为 $BACKUP_FILE"
    else
        echo "数据库 $DATABASE 导出失败。"
    fi
done
