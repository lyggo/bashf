#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本截取 Android 设备屏幕截图。"
    echo "用法：./adb_screenshot.sh <截图文件路径>"
    exit 1
fi

SCREENSHOT_PATH=$1

# 截取截图
adb shell screencap -p "/sdcard/screenshot.png"
adb pull /sdcard/screenshot.png "$SCREENSHOT_PATH"

if [ $? -eq 0 ]; then
    echo "截图已保存到 $SCREENSHOT_PATH"
else
    echo "截图保存失败。"
fi
