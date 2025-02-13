#!/bin/bash

# 检查操作系统类型
OS=$(uname -s)

# 安装brew (仅限Mac)
if [ "$OS" == "Darwin" ]; then
    echo "检测到 macOS 系统，正在安装 Homebrew..."
    if ! command -v brew &> /dev/null; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
fi

# 安装SDKMAN（所有系统）
echo "正在安装 SDKMAN..."
if ! command -v sdk &> /dev/null; then
    curl -s "https://get.sdkman.io" | bash
    source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

# 安装 JDK 11
echo "正在安装 JDK 11..."
sdk install java 11.0.11-open

# 安装 Android SDK
echo "正在安装 Android SDK..."
if [ "$OS" == "Darwin" ]; then
    brew install --cask android-sdk
else
    if [ -x "$(command -v apt-get)" ]; then
        sudo apt-get update
        sudo apt-get install -y android-sdk
    elif [ -x "$(command -v yum)" ]; then
        sudo yum install -y android-sdk
    fi
fi

# 配置 Android SDK 环境变量
echo "配置 Android SDK 环境变量..."
echo 'export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk' >> ~/.bash_profile
echo 'export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH' >> ~/.bash_profile
source ~/.bash_profile

# 安装 NVM（Node Version Manager）
echo "正在安装 NVM..."
if ! command -v nvm &> /dev/null; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
    source ~/.bashrc  # 或者 ~/.zshrc 根据使用的 shell 来定
fi

# 安装 Node.js（最新版本）
echo "正在安装 Node.js..."
nvm install node

# 安装 Docker
echo "正在安装 Docker..."
if [ "$OS" == "Darwin" ]; then
    brew install --cask docker
elif [ -x "$(command -v apt-get)" ]; then
    sudo apt-get update
    sudo apt-get install -y docker.io
elif [ -x "$(command -v yum)" ]; then
    sudo yum install -y docker
fi

# 配置 Docker 开机启动
echo "配置 Docker 开机启动..."
if [ "$OS" != "Darwin" ]; then
    sudo systemctl start docker
    sudo systemctl enable docker
fi

# 输出成功信息
echo "测试开发环境部署完成！"
