#!/bin/bash
time=`date -u "+%Y%m%d"`
ver=`grep 'mcVersion' gradle.properties | head -1`
# version=${ver%?}
# filename=paper-${version##*=}-${time}-reobf.jar
filename=paper-${ver##*=}-${time}-reobf.jar
echo $filename
dir=$(pwd)/build/libs/
if [ "`ls -A $dir`" = "" ]; then
echo "file does not exist"
exit 1
else
files=`ls $dir`
echo ${dir}${files}
mv ${dir}${files} ${dir}${filename}
fi