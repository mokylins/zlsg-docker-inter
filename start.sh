#!/bin/bash -e
#
# 游戏启动脚本
# 参数列表
# -start -stop -status
# -P{/*/*.jar}	程序运路径
# -H{/*/}		程序工作目录

#引入JAVA启动选项
#. ./java_option.sh


#*********************************
#启动程序
#*********************************
run()
{
	java -jar ${1}.jar
	#nohup java $JAVA_OPTS -jar ${1}.jar >> "$(basename ${1}).log" 2>&1 &
	#
	#nohup java -jar ${1}.jar | tee "$(basename ${1}).log" 2>&1 &
	#直接覆盖日志文件   
	# | tee ./t.log   
	#将输出内容附加到日志文件   
	# | tee -a ./t.log
	#echo $! > "$(basename ${1}).pid"
	#关闭
	#PID=$(cat $(basename ${1}).pid)
	#kill -9 $PID
}


##########
run "$(pwd)/dip"


exit 0