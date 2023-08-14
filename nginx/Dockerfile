# 基础镜像
FROM xuezhileikaku/ubuntu:1.0

# 维护者信息
MAINTAINER xuezhileikaku chengyingbo88@163.com

# 设置环境变量
ENV MYPATH /etc/nginx

# 工作目录
WORKDIR $MYPATH

# 安装make
RUN apt-get install -y make

# 创建源码目录
RUN mkdir -p /tmp/nginx/

# 拷贝nginx源码
ADD nginx-1.23.0.tar.gz /tmp/nginx/

# 编译安装
RUN cd /tmp/nginx/nginx-1.23.0/ && ./configure --prefix=/usr/local/nginx --sbin-path=/usr/local/nginx/sbin/nginx --conf-path=/etc/nginx/nginx.conf && make && make install

# 创建软连接
RUN ln -s /usr/local/nginx/sbin/nginx /usr/bin/

# 暴露端口
EXPOSE 80 443

# 容器启动执行命令
ENTRYPOINT ["nginx", "-g", "daemon off;"]
