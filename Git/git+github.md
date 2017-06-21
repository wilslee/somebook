## Git和Github介绍 ##

Git是Linus Torvalds(Linux系统的作者)创作的一个免费开源的分布式版本控制软件，主要用于代码的版本管理。

>Git可以跟踪文件变化，对于每次不同修改的代码提交，Git都会记录下相应的版本，并且随时可以回滚相应版本。同时我们可以把代码存放于远程服务器，使用Git来进行版本管理同时进行多人协作开发。

Github是一个用Git做版本控制的项目托管平台，也是目前世界上最大的代码托管平台和开源社区，上面有许多有用开源软件以及工具。

>Git可以管理本地PC的项目代码，同时也可以管理远程服务器的代码。现如今在多人协作开发模式下，往往是把代码放在远程服务器托管，而开发人员只需要把远程服务代码下拉到本地进行开发，开发完成一个版本就提交推送到远程服务器进行代码合并。Github就是这样一个远程仓库的托管平台。
## Git下载和需要熟悉的命令

Git的下载地址是<https://git-scm.com/downloads>   
Git官方文档: <https://git-scm.com/book/en/v2>

    git clone your-project-url                  # 从远程服务器下载一个git项目
    git init your-project                       # 初始化一个git项目
    git status                                  # 查看当前项目的git状态
    git branch                                  # 查看当前项目所处分支
    git checkout -b branch-name                 # 切换项目分支
    git add filepath                            # 添加一个准备要提交的文件
    git commit -m "your message"                # 提交你的代码
    git push origin your-branch                 # 推送你的代码到服务器
    git pull origin your-branch                 # 从你的远程仓库分支
    # 下面两个命令合并使用相当于git pull
    git fetch orgin your-branch                 # 获取远程分支节点
    git merge origin your-branch                # 合并远程分支到本地分支


## 相关工具
Git本身自带一个bash工具和一个简单的GUI工具。  
>window下可以直接使用Git Bash或者将Git加入到系统环境变量当中方便CMD调用。  
>**Tips：** window下新版Git的安装时有个选项勾选上可以自动将Git加入系统环境变量中

Git图形界面工具：<https://git-scm.com/downloads/guis> (这里推荐新手尽可能先熟悉Git的命令行操作)

(这里推荐一个window下可以运行Linux命令的不错工具<https://github.com/bmatzelle/gow>)
## SSH
