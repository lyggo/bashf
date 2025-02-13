#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本清理Redis的所有缓存。"
    echo "用法：./clear_redis_cache.sh"
    exit 1
fi

redis-cli flushall
echo "Redis缓存已清理。"
