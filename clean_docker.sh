#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本清理未使用的Docker镜像。"
    echo "用法：./clean_docker.sh"
    exit 1
fi

docker system prune -af
echo "未使用的Docker镜像已清理。"
