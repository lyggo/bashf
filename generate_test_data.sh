#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本生成测试数据。"
    echo "用法：./generate_test_data.sh <数据目录>"
    exit 1
fi

DATA_DIR=$1

# 生成示例数据（可以根据实际需求调整）
mkdir -p "$DATA_DIR"
for i in {1..10}; do
    echo "Test Data $i" > "$DATA_DIR/test_data_$i.txt"
done

echo "测试数据已生成到 $DATA_DIR"
