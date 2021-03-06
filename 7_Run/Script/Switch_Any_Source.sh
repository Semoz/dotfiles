#!/bin/sh
#
## Allow Any source
## 开启/关闭任何来源
## 开启任何来源
# sudo spctl --master-disable
## 关闭任何来源
# sudo spctl --master-enable

STATUS=`spctl --status | grep disable`

# echo $STATUS

if [ ! -n "$STATUS" ]; then
    sudo spctl --master-disable
else
    echo "done!"
fi