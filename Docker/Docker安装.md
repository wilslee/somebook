### Docker 自动安装
- 官方:  ``` curl -sSL https://get.docker.com/ | sh ```
- 阿里云: ` curl -sSL http://acs-public-mirror.oss-cn-hangzhou.aliyuncs.com/docker-engine/internet | sh `
- DaoCloud: ` curl -sSL https://get.daocloud.io/docker | sh `

### Docker 手动安装

#### 安装可选内核模块包以使用 AUFS 内核驱动:

```
$ sudo apt-get install linux-image-extra-$(uname -r) linux-image
-extra-virtual
```

#### 添加 APT 软件源。

Ubuntu 系统软件源中 Docker 的版本可能过旧，建议直接使用 Docker 官方提供的软件源，因此要添加 APT 软件源。

```
$ sudo apt-get update
$ sudo apt-get install apt-transport-https ca-certificates software-properties-common
```

为了确认所下载软件包的合法性，需要添加 Docker 官方软件源的 GPG 密钥
```
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
OK
$ sudo apt-key fingerprint 0EBFCD88

pub   4096R/0EBFCD88 2017-02-22
      Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
uid                  Docker Release (CE deb) <docker@docker.com>
sub   4096R/F273FCD8 2017-02-22
```
添加稳定版本的源
```
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```
#### 安装 Docker
```
$ sudo apt-get install docker_ce


# Ubuntu 12.04/14.04、Debian 7 Wheezy
# 启动 Docker 服务
$ sudo service docker start

# Ubuntu 16.04、Debian 8 Jessie/Stretch
# 加入系统开机启动
$ sudo systemctl enable docker
# 启动 Docker 服务
$ sudo systemctl start docker
```
Docker 需要在 root 权限下进行使用

- 以 root 账号使用 docker (不推荐)
- 以 sudo 模式使用 docker
- 将当前用户加入 docker 组 (docker 安装后自动创建)

```
# 创建 docker 组
$ sudo groupadd docker

# 将当前用户加入 docker 组
$ sudo usermod -aG docker $USER
```


### 参考资料
- [Docker官方文档: Docker Documentation](https://docs.docker.com/)
- [Docker — 从入门到实践](https://www.gitbook.com/book/yeasy/docker_practice/details)
- [GPG入门教程
](http://www.ruanyifeng.com/blog/2013/07/gpg.html)


### Change Log
- 170825 wilslee 创建
