#!/bin/zsh

date=$(date +%c)
ffmpeg -f x11grab -r 60 -s 3440x1440 -i :0.0 -vcodec libx264 -pix_fmt yuv420p -preset ultrafast -crf 0 -threads 0 ~/Videos/output_$date.mkv
