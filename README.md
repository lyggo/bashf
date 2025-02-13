# bashf

### 1. **系统监控与管理**

- **查看系统负载和资源使用情况**

  ```
  top
  htop      # 更友好的图形化界面
  uptime    # 查看系统运行时间及负载
  free -h   # 查看内存使用情况
  vmstat    # 查看系统虚拟内存统计信息
  iostat    # 查看磁盘IO性能
  ```

- **查看磁盘使用情况**

  ```
  df -h     # 查看磁盘分区使用情况
  du -sh /path/to/dir  # 查看某个目录的磁盘使用情况
  ```

- **查看 CPU 使用情况**

  ```
  mpstat -P ALL    # 查看每个CPU核的使用情况
  ```

- **查看系统进程**

  ```
  ps aux         # 查看所有进程
  ps -ef         # 查看进程树
  ```

- **查找进程**

  ```
  pgrep <进程名>     # 查找进程ID
  pkill <进程名>     # 终止指定进程
  ```

- **查看系统日志**

  ```
  dmesg        # 查看系统日志，通常用于硬件相关的错误
  journalctl   # 查看和查询日志（如果使用systemd）
  ```

### 2. **网络管理**

- **查看网络连接状态**

  ```
  netstat -tuln   # 查看所有监听端口
  ss -tuln        # 查看所有监听端口（ss是netstat的替代工具）
  ```

- **查看IP地址**

  ```
  ifconfig       # 查看所有网络接口信息（有时需要安装net-tools）
  ip a           # 查看网络接口（推荐使用）
  ```

- **查看路由表**

  ```
  route -n       # 查看路由表
  ip route show  # 查看路由表
  ```

- **检查端口是否开放**

  ```
  nc -zv <ip> <port>    # 检查指定IP的端口是否开放
  ```

- **测试网络连接**

  ```
  ping <ip_or_domain>    # 测试主机的连通性
  traceroute <ip_or_domain>   # 路由追踪
  ```

### 3. **文件处理**

- **查找文件**

  ```
  find /path/to/search -name "filename"  # 查找指定文件
  find /path/to/search -type f -name "*.log"   # 查找特定类型的文件
  ```

- **查找并删除文件**

  ```
  find /path/to/search -name "*.log" -exec rm -f {} \;    # 查找并删除log文件
  ```

- **文件权限管理**

  ```
  chmod 755 <file_or_dir>    # 更改文件或目录权限
  chown user:group <file_or_dir>    # 更改文件或目录的所有者
  ```

- **文件操作**

  ```
  cp -r <source> <destination>    # 复制文件或目录
  mv <source> <destination>       # 移动文件或目录
  rm -rf <dir_or_file>            # 强制删除目录或文件
  ln -s <target> <link_name>      # 创建符号链接
  ```

- **查看文件内容**

  ```
  cat <file>      # 输出文件内容
  less <file>     # 分页查看文件
  head -n 10 <file>  # 查看文件前10行
  tail -n 10 <file>  # 查看文件最后10行
  ```

- **查看文件差异**

  ```
  diff file1 file2  # 比较两个文件的差异
  ```

- **查找文件内容**

  ```
  grep "pattern" file       # 查找文件中包含指定模式的行
  grep -r "pattern" /path   # 在目录中递归查找
  ```

### 4. **用户管理**

- **添加/删除用户**

  ```
  useradd <username>    # 添加用户
  userdel <username>    # 删除用户
  ```

- **修改用户密码**

  ```
  passwd <username>     # 修改用户密码
  ```

- **查看用户信息**

  ```
  whoami    # 查看当前用户
  who       # 查看当前登录的用户
  w         # 查看当前登录用户的详细信息
  ```

- **修改用户组**

  ```
  groupadd <groupname>   # 创建用户组
  groupdel <groupname>   # 删除用户组
  ```

### 5. **进程管理**

- **列出系统进程**

  ```
  ps aux           # 列出所有进程
  ps -ef           # 列出所有进程（包含父子进程）
  ```

- **杀死进程**

  ```
  kill <pid>           # 通过PID杀死进程
  killall <process_name>  # 根据进程名杀死所有相关进程
  ```

- **查看进程资源使用**

  ```
  top       # 查看进程及资源占用
  htop      # 更友好的进程查看工具
  ```

- **后台运行进程**

  ```
  nohup <command> &    # 将命令放入后台执行
  ```

### 6. **压缩与解压**

- **压缩文件**

  ```
  tar -czvf archive.tar.gz /path/to/directory    # 压缩为tar.gz
  zip -r archive.zip /path/to/directory          # 压缩为zip
  ```

- **解压文件**

  ```
  tar -xzvf archive.tar.gz    # 解压tar.gz文件
  unzip archive.zip           # 解压zip文件
  ```

### 7. **定时任务管理**

- **查看当前定时任务**

  ```
  crontab -l   # 查看当前用户的cron任务
  ```

- **编辑定时任务**

  ```
  crontab -e   # 编辑当前用户的cron任务
  ```

- **查看系统级定时任务**

  ```
  sudo less /etc/crontab    # 查看系统定时任务
  ```

### 8. **软件安装与更新**

- **使用APT（Ubuntu/Debian）**

  ```
  sudo apt update               # 更新软件源
  sudo apt upgrade              # 更新已安装的软件包
  sudo apt install <package>    # 安装软件包
  sudo apt remove <package>     # 删除软件包
  ```

- **使用YUM（CentOS/RHEL）**

  ```
  sudo yum update               # 更新软件包
  sudo yum install <package>    # 安装软件包
  sudo yum remove <package>     # 删除软件包
  ```

- **使用DNF（CentOS/RHEL 8+）**

  ```
  sudo dnf update               # 更新软件包
  sudo dnf install <package>    # 安装软件包
  sudo dnf remove <package>     # 删除软件包
  ```

### 9. **文件系统管理**

- **挂载和卸载磁盘**

  ```
  mount /dev/sdX1 /mnt     # 挂载磁盘
  umount /mnt              # 卸载磁盘
  ```

- **查看文件系统信息**

  ```
  df -h                     # 查看磁盘使用情况
  mount                     # 查看当前挂载的文件系统
  ```

### 10. **备份与恢复**

- 备份文件或目录

  ```
  rsync -av /source/ /destination/    # 使用rsync进行备份
  cp -r /path/to/source /path/to/destination    # 使用cp进行备份
  ```

### 11. **服务管理**

- 使用 systemd 管理服务

  ```
  systemctl status <service_name>   # 查看服务状态
  systemctl start <service_name>    # 启动服务
  systemctl stop <service_name>     # 停止服务
  systemctl restart <service_name>  # 重启服务
  systemctl enable <service_name>   # 设置服务开机启动
  ```

### 12. **其它有用命令**

- **查看文件夹中文件的修改时间**

  ```
  ls -lt  # 按修改时间排序
  ```

- **重定向输出到文件**

  ```
  command > file.txt       # 将输出重定向到文件
  command >> file.txt      # 将输出追加到文件
  ```

- **查看指定文件或命令的手册**

    ```
    man <command>      # 查看命令的手册
    ```