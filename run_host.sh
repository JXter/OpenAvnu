#!/bin/bash
# Simple script to run echo_talker
if [ "$#" -le "1" ]; then 
    echo "please enter network interface name  and ini file name as parameters. For example:"
    echo "sudo ./run eth2 file.ini"
    exit -1
fi

cd lib/avtp_pipeline/build/bin
exec ./openavb_host -I $1 $2,stream_addr=ba:bc:1a:ba:bc:1a,$3,$4

