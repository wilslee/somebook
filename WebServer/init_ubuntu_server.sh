#!/usr/bin/env bash
# 更新ubuntu软件源
sudo apt-get update
# 创建ubuntu账号并加入到sudo用户组, 不建议直接使用root操作
sudo adduser ubuntu
usermod -aG sudo ubuntu
# 安装基础组件
sudo apt-get install git libssl-dev openssl build-essential
# 安装图片库基础寄件
sudo apt-get install libjpeg-dev zlib1g-dev
# ubuntu配置中文环境
locale-gen zh_CN.utf8
export LANG='zh_CN.utf8'
export LANGUAGE='zh_CN.utf8'
export LC_ALL='zh_CN.utf8

# nginx
sudo apt-get install nginx
# mysql安装
sudo apt-get install mysql-client mysql-server libmysqlclient-dev
