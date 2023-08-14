# 使用Ubuntu最新LTS版本作为基础镜像
FROM ubuntu:22.10

# 维护者信息
MAINTAINER xuezhileikaku <chengyingbo88@163.com>

# 设置工作目录
ENV MYPATH /etc/nginx
WORKDIR $MYPATH

# 预先更新索引以利用缓存
RUN apt-get update

# 安装所需依赖,组合层 vim编辑器，ifconfig， nginx 依赖
RUN apt-get install -y vim lrzsz net-tools gcc libpcre3 libpcre3-dev zlib1g zlib1g-dev openssl libssl-dev

CMD echo $MYPATH
CMD echo "success"
CMD /bin/bash
