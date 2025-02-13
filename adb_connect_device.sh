#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本连接 Android 设备。"
    echo "用法：./adb_connect_device.sh <设备IP>"
    exit 1
fi

DEVICE_IP=$1

# 连接设备
adb connect "$DEVICE_IP"

if [ $? -eq 0 ]; then
    echo "已成功连接到设备：$DEVICE_IP"
else
    echo "连接设备失败。"
fi
