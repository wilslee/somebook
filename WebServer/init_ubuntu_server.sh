#!/usr/bin/env bash
# 更新ubuntu软件源
sudo apt-get update

# 创建ubuntu账号并加入到sudo用户组, 不建议直接使用root操作
sudo adduser ubuntu
usermod -aG sudo ubuntu

# 安装基础开发环境
sudo apt-get install libssl-dev openssl build-essential bzip2 
sudo apt-get install libreadline-dev
sudo apt-get install libsqlite3-dev libmysqlclient-dev python-dev 

# 安装图片库基础环境
sudo apt-get install libjpeg-dev zlib1g-dev

# 安装基本软件
sudo apt-get install git wget curl 

# ubuntu配置中文环境
locale-gen zh_CN.utf8
export LANG='zh_CN.utf8'
export LANGUAGE='zh_CN.utf8'
export LC_ALL='zh_CN.utf8'

# 安装中文字体
sudo apt-get install fonts-droid-fallback ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming
# 安装 windows 字体
sudo apt-get install ttf-mscorefonts-installer
# nginx
sudo apt-get install nginx
# mysql安装
sudo apt-get install mysql-client mysql-server libmysqlclient-dev
