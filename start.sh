#!/bin/bash -e
#
# 游戏启动脚本
# 参数列表
# -start -stop -status
# -P{/*/*.jar}	程序运路径
# -H{/*/}		程序工作目录

#引入JAVA启动选项
. ./java_option.sh


#*********************************
#启动程序
#*********************************
run()
{
	nohup java $JAVA_OPTS $APP_OPTS -jar ${1}.jar >> "$(basename ${1}).log" 2>&1 &
}

##########
run "$(pwd)/dip"


exit 0