#!/bin/zsh

find -type f -exec (for file in *.wav; do sox $file -r 16000 -c 1 -b 16 "$(basename $file .wav).wav" -V; done)
