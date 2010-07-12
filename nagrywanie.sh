#!/bin/bash

DIR=${HOME}
NAME="${DIR}/nagranie.mpg"


#ffmpeg -f x11grab -s 1280x800 -r 25 -i :0.0 /tmp/out.mpg

ffmpeg -f x11grab -s 1280x800 -r 25 -i :0.0 "${NAME}" 