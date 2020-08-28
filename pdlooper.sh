#!/bin/bash
#
#
# Zigmhount - August 2020
# Pdlooper <https://github.com/zigmhount/pdlooper>
# 

# Kill all children processes when the script is killed:
trap "kill 0" EXIT

# Launch Purr Data and open the main patch:

purr-data -stderr 2>&1 -unique -rt -jack -inchannels "2" -outchannels "16" -audiobuf 150 dsp_main.pd | while true; do pdsend 9999 localhost udp; done

# This loads dsp_main.pd in Purr-Data with the following options:
#
#   -stderr 2>&1
# to redirect stderr (GUI console) to stdout
#
#   | while true; do pdsend 9999 localhost udp; done
# to send stdout to udp 9999 using pdsend. The patch then has a
# [netreceive 999 1] to catch everything that coming from there, most of it is
# just printed, some of it (like "Loaded Soundfont:..." message) is used to tell
# in pdlooper's UI once the soundfont has been loaded.
#
#   -unique
# to start a separate instance of purr-data, especially for ui_main.pd that will
# be called by dsp_main.pd.
#
#   -rt
# for real time (valid only for the dsp_main.pd patch, the instance running
# ui_main.pd will have the -nrt option.
#
#   -jack
# to use Jack
#
#   -inchannels "2"
# to use 2 audio input channels, e.g. internal or external microphone
#
#   -outchannels "16"
# to use 16 audio outputs, i.e. 8 stereo outputs to Non-Mixer (1 output per
# column).
#
#   -audiobuf 150
# to increase Purr-data's buffer. Not sure yet whether 150 is ok on my machine
# for good performance, good sound quality and limited latency.
#


# This will kill this script once the children are terminated:
wait
