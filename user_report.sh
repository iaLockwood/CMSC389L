#!/bin/bash

cat ~/scripts/connected.txt > x
/etc/init.d/msm newsrv connected > ~/scripts/connected.txt
cat ~/scripts/connected.txt > y

DIFF=$(diff x y)
if [ "$DIFF" != "" ]
then
    echo "change in connected users, pushing log to subscribers"
    aws sns publish --topic-arn arn:aws:sns:us-east-1:867711791795:minecraft --message file:///opt/msm/servers/newsrv/logs/latest.log
    echo "log sent"
else
    echo "no change"
fi
