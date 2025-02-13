#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本清理测试环境中的临时数据。"
    echo "用法：./clear_test_data.sh <数据目录>"
    exit 1
fi

DATA_DIR=$1

# 删除临时数据
rm -rf "$DATA_DIR"/*

if [ $? -eq 0 ]; then
    echo "测试数据已清理。"
else
    echo "清理测试数据失败。"
fi
