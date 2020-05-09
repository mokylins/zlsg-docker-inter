#!/bin/bash
#
# java_option.sh
# JAVA启动参数配置
#

export JAVA_OPTS=

#JAVA参数------
### (-server)表示应用于服务器的配置
JAVA_OPTS="-server"
### (-Xms<>)设置JVM最小内存为1024m。此值可以设置与-Xmx相同，以避免每次垃圾回收完成后JVM重新分配内存。 默认1/64
JAVA_OPTS="$JAVA_OPTS -Xms1228m"
### (-Xmx<>)设置JVM最大可用内存为1024MB 默认1/4 推荐80%
JAVA_OPTS="$JAVA_OPTS -Xmx1228m"
### (-Xss<>)表示每个Java线程堆栈大小<默认1m>
#JAVA_OPTS="$JAVA_OPTS -Xss512k"
### 关闭虚拟机对class的垃圾回收功能
JAVA_OPTS="$JAVA_OPTS -Xnoclassgc"
###
JAVA_OPTS="$JAVA_OPTS -Xverify:none"

### (-Duser.timezon=<>)设置用户所在时区。
JAVA_OPTS="$JAVA_OPTS -Duser.timezone=Asia/Shanghai"
