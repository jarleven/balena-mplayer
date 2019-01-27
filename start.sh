#!/bin/bash

export URL=${URL:="rtsp://192.168.1.10:554/user=admin&password=&channel=1&stream=0.sdp?real_stream"}
export CACHE=${CACHE:=2000}
export VOLUME=${VOLUME:=100}

mplayer -cache ${CACHE} \
        -quiet \
        -volume $VOLUME \
        $URL
 
# Consider this... 
# while true
#    do mplayer $URL -cache ${CACHE} -volume $VOLUME -quiet
#    sleep 2
# done
