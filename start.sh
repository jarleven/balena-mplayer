#!/bin/bash

export APP=${APP:=1}
export URL=${URL:="rtsp://192.168.1.10:554/user=admin&password=&channel=1&stream=0.sdp?real_stream"}
export CACHE=${CACHE:=2000}
export VOLUME=${VOLUME:=100}

if [ $APP -eq "1" ]; then
  while true
  do
   echo "Starting mplayer with url $URL"
   sleep 10
   mplayer -cache ${CACHE} \
        -quiet \
        -vo fbdev2 \
        -volume $VOLUME \
        $URL
  done
fi

 
# Consider this... 
# while true
#    do mplayer $URL -cache ${CACHE} -volume $VOLUME -quiet
#    sleep 2
# done



#
# Consider parameter to select ffmpeg, VLC and so on
#
#
#
