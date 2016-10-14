#!/bin/bash
# 变量定义
directory="/home/sky/git"
# why
# directory='~/git"
newfile="/etc/lsyncd/lsyncd_desc_dirs.lua"
# 原文件若存在删除，
if find $newfile
then
  rm $newfile
fi

# 新建文件
touch $newfile

# 遍历git目录下的工程目录,并写入
echo 'lsyncd_desc_dirs={'>>$newfile
for file in `ls $directory`
do
  if [ -d $directory/$file ]
  then
    echo '"'${file}'",'>>$newfile
  fi
done
echo "}">>$newfile

