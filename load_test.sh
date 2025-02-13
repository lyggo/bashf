#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本执行负载测试。"
    echo "用法：./load_test.sh <负载测试工具路径>"
    exit 1
fi

TOOL_PATH=$1

# 假设使用Apache Benchmark进行负载测试
$TOOL_PATH/bin/ab -n 1000 -c 10 http://localhost:8080/

if [ $? -eq 0 ]; then
    echo "负载测试执行成功。"
else
    echo "负载测试执行失败。"
fi
