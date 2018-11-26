#!/bin/bash
in=`echo $1|sed 's/\....//g'`
#do not forget dasmx is win32, wine is required
#./dasmx140/Dasmx.exe -a -c68HC05 -e0x400 -o0x400 -t $1
./dasmx140/Dasmx.exe -a -t $1
#./dasmx140/Dasmx.exe -a ${in}
