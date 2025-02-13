#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本安装测试依赖。"
    echo "用法：./install_dependencies.sh"
    exit 1
fi

if [ "$(uname)" == "Darwin" ]; then
    brew install "$1"
elif [ -f /etc/debian_version ]; then
    sudo apt install "$1"
elif [ -f /etc/redhat-release ]; then
    sudo yum install "$1"
fi
