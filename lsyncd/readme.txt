# 实时复制
# 工作时做一个实时复制的程序有时候比较方便
inotify-tools    #实时监控，查看文件是否有变动
rsync            #复制
sersync          

# 配置 lsyncd.conf
http://studys.blog.51cto.com/9736817/1660079
http://seanlook.com/2015/05/06/lsyncd-synchronize-realtime/

********************************************************************************
# 注意
# /etc下，新建lsyncd文件夹，如下：
# 将文件全部存放其中
/etc/lsyncd/

# git目录如下
/home/sky/git
********************************************************************************



# 针对Git目录下的文件夹进行实时监控
# 开启程序
sudo lsyncd -log Exec /etc/lsyncd/lsyncd.conf
