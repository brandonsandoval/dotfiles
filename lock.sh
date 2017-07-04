#!/bin/bash

# i3lock blurred screen inspired by /u/patopop007 and the blog post
# http://plankenau.com/blog/post-10/gaussianlock

# Dependencies: imagemagick, i3lock, scrot

IMAGE=/tmp/i3lock.png
SCREENSHOT="scrot $IMAGE"

# All options are here: http://www.imagemagick.org/Usage/blur/#blur_args
BLURTYPE="0x5"

# Get the screenshot, add B&W + blur
$SCREENSHOT
convert $IMAGE -colorspace Gray -blur $BLURTYPE $IMAGE
i3lock -e -f -i $IMAGE
rm $IMAGE

