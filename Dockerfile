#依赖系统
FROM openjdk:11

RUN mkdir -p /data
#复制
ADD java_option.sh /data/java_option.sh 
ADD start.sh /data/start.sh
ADD dip.jar /data/dip.jar
# ADD app /

#WORKDIR 设置工作目录 相当于cd
WORKDIR /data/

#EXPOSE 设置开放端口(空格间隔)
EXPOSE 8080

#VOLUME 持久化存储数据卷(docker关闭时不删除)
VOLUME /logs

#ENV 设置默认环境变量

#应用参数
#数据库服务器
#ENV RDS_HOST=
#ENV RDS_PORT=3306
#ENV RDS_DB=
#ENV RDS_USER=
#ENV RDS_PASSWD=

#设置系统时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#RUN 运行linux指令(清理环境安装备份，设置脚本权限)
RUN apt-get clean && chmod +x /data/*.sh

#ENTRYPOINT["指令" ,"参数"] 执行指令，只会在docker run 时执行
#ENTRYPOINT ["/*.sh"]

#CMD ["指令","参数"]最终运行脚本
CMD ["sh","/data/start.sh"]

