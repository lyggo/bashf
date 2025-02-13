#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本卸载指定包名的应用。"
    echo "用法：./adb_uninstall_apk.sh <包名>"
    exit 1
fi

PACKAGE_NAME=$1

# 卸载应用
adb uninstall "$PACKAGE_NAME"

if [ $? -eq 0 ]; then
    echo "已成功卸载应用：$PACKAGE_NAME"
else
    echo "卸载应用失败。"
fi
