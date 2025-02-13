#!/bin/bash

if [ $# -eq 0 ]; then
    echo "此脚本更新系统和所有安装的软件包。"
    echo "用法：./update_system.sh"
    exit 1
fi

if [ "$(uname)" == "Darwin" ]; then
    brew update && brew upgrade
elif [ -f /etc/debian_version ]; then
    sudo apt update && sudo apt upgrade -y
elif [ -f /etc/redhat-release ]; then
    sudo yum update -y
fi

echo "系统和软件包已更新。"
