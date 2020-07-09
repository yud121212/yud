#!/bin/bash
ip=`ip route get 8.8.8.8 | sed -n '/src/{s/.*src *\([^ ]*\).*/\1/p;q}'`
b=```screen -ls | tr -d '\r\n' | cut -f2 -d$'\t' | cut -f2 -d '.'```
if [ -z $b ];then
      printf "[ANTT:$ip] Screen $b NOT run\n"
      exit 1
fi
if [ $b == "logchecker" ]; then
        printf "[ANTT:$ip] Screen $b run\n"    
fi
#screen -S logchecker -X quit
