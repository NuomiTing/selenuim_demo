#!/usr/bin/env bash
# 编译+部署selenuim_demo站点

# 需要配置如下参数
# 项目路径，在Execute shell中配置项目路径，pwd就可以获得该项目路径
# export PROJ_PATH=这个jenkins任务在部署机器上的路径

# 输入你的环境上tomcat的全路径
# export TOMCAT_APP_PATH=tomcat在部署机器上的路径

### base函数



#killTomcat()
#{
#  pid=`ps -ef|grep tomcat|grep java|awk '{print $2}'`
#  echo "tomcat Id list:$pid"
#  if [ "$pid" = "" ]
#  then
#    echo "no tomcat pid alive"
#  else
#    kill -9 $pid
#  fi
#}
cd $PROJ_PATH
echo "hello"

python3 -m pip install --upgrade pip
echo "hello1"
pip install -r requirements.txt

echo "hello2"
python3 test.py
echo "hello3"

## 停tomcat
#killTomcat
#
## 删除原有工程
#rm -rf $TOMCAT_APP_PATH//webapps/ROOT
#rm -rf $TOMCAT_APP_PATH//webapps/ROOT.war
#rm -rf $TOMCAT_APP_PATH//webapps/selenuim_demo.war
#
## 复制新的工程
#cp $PROJ_PATH/SelenuimTest/ $TOMCAT_APP_PATH/webapps/

#cd $TOMCAT_APP_PATH/webapps/
#mv selenuim_demo.war ROOT.war
#
## 启动Tomcat
#cd $TOMCAT_APP_PATH/
#sh bin/startup.sh