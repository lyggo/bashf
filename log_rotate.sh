#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本自动轮转日志文件。"
    echo "用法：./log_rotate.sh <日志文件路径>"
    exit 1
fi

log_file="$1"
log_dir=$(dirname "$log_file")
log_name=$(basename "$log_file")

# 压缩并备份日志
gzip "$log_file"
mv "$log_file.gz" "$log_dir/${log_name}.$(date +%Y%m%d).gz"

echo "日志轮转完成，备份文件为 ${log_dir}/${log_name}.$(date +%Y%m%d).gz"
