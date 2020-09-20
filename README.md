# Fast-Deploy-Arch

快速部署Arch Linux为我的配置

[Gitee](https://gitee.com/chitang233/Fast-Deploy-Arch)

[Github](https://github.com/chitang233/Fast-Deploy-Arch)

[Blog](https://chitang.tk)

## 使用方法

### 预先准备

请**先**运行Prepare-in-advence.sh进行预先准备

```shell
sudo ./Prepare-in-advence.sh
```

### 安装

您可以通过`cd`到某个文件夹后使用`make`命令进行安装

大部分`Makefile`中都包含7个选项，您可以按需使用

```shell
install-<程序名>	#安装程序本体
install-config	#安装我的配置文件
install-all	#安装程序本体和配置文件
uninstall-<程序名>	#卸载程序本体
uninstall-config	#卸载我的配置文件
uninstall-all	#卸载程序本体和配置文件
clean	#清理安装过程中产生的软件包缓存
```

以`fcitx5`为例子

假如您想安装`fcitx5`以及我的配置文件

您需要输入以下指令

```shell
git clone https://github.com/chitang233/Fast-Deploy-Arch
(or git clonehttps://gitee.com/chitang233/Fast-Deploy-Arch)
cd Fast-Deploy-Arch/fcitx5
make install-all
```

