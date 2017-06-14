#!/usr/bin/env bash
# 更新ubuntu软件源
sudo apt-get update
# 安装基础组件
sudo apt-get install git libssl-dev openssl
# 安装图片库基础寄件
sudo apt-get install libjpeg-dev zlib1g-dev
# nginx
sudo apt-get install nginx
# mysql安装
sudo apt-get install mysql-client mysql-server libmysqlclient-dev