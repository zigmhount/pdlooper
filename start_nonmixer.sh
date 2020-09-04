#!/bin/bash


# Kill all children processes when the script is killed:
trap "kill 0" EXIT


# purr-data -unique -rt -jack -nogui -inchannels "2" -outchannels "16" dsp_main.pd

non-mixer --osc-port 17154 NonMixer_defaultsetup_pdlooper/ &

sleep 7

#jack_connect pure_data_0:output0 Non-Mixer\ \(pdlooper_out\):Drums\/in-1
#jack_connect pure_data_0:output1 Non-Mixer\ \(pdlooper_out\):Drums\/in-2
#jack_connect Non-Mixer\ \(pdlooper_out\):Drums/\out-1 Non-Mixer/Master:in-1
#jack_connect Non-Mixer\ \(pdlooper_out\):Drums/\out-2 Non-Mixer/Master:in-2
#jack_connect pure_data_0:output2 Non-Mixer\ \(pdlooper_out\):Percu\/in-1
#jack_connect pure_data_0:output3 Non-Mixer\ \(pdlooper_out\):Percu\/in-2
#jack_connect Non-Mixer\ \(pdlooper_out\):Percu/\out-1 Non-Mixer/Master:in-1
#jack_connect Non-Mixer\ \(pdlooper_out\):Percu/\out-2 Non-Mixer/Master:in-2

#jack_connect pure_data_0:output4 Non-Mixer\ \(pdlooper_out\):Bass\/in-1
#jack_connect pure_data_0:output5 Non-Mixer\ \(pdlooper_out\):Bass\/in-2
#jack_connect Non-Mixer\ \(pdlooper_out\):Bass/\out-1 Non-Mixer/Master:in-1
#jack_connect Non-Mixer\ \(pdlooper_out\):Bass/\out-2 Non-Mixer/Master:in-2

#jack_connect pure_data_0:output6 Non-Mixer\ \(pdlooper_out\):Pads\/in-1
#jack_connect pure_data_0:output7 Non-Mixer\ \(pdlooper_out\):Pads\/in-2
#jack_connect Non-Mixer\ \(pdlooper_out\):Pads/\out-1 Non-Mixer/Master:in-1
#jack_connect Non-Mixer\ \(pdlooper_out\):Pads/\out-2 Non-Mixer/Master:in-2

#jack_connect pure_data_0:output8 Non-Mixer\ \(pdlooper_out\):Chords\/in-1
#jack_connect pure_data_0:output9 Non-Mixer\ \(pdlooper_out\):Chords\/in-2
#jack_connect Non-Mixer\ \(pdlooper_out\):Chords/\out-1 Non-Mixer/Master:in-1
#jack_connect Non-Mixer\ \(pdlooper_out\):Chords/\out-2 Non-Mixer/Master:in-2

#jack_connect pure_data_0:output10 Non-Mixer\ \(pdlooper_out\):Lead\/in-1
#jack_connect pure_data_0:output11 Non-Mixer\ \(pdlooper_out\):Lead\/in-2
#jack_connect Non-Mixer\ \(pdlooper_out\):Lead/\out-1 Non-Mixer/Master:in-1
#jack_connect Non-Mixer\ \(pdlooper_out\):Lead/\out-2 Non-Mixer/Master:in-2

#jack_connect pure_data_0:output12 Non-Mixer\ \(pdlooper_out\):Other1\/in-1
#jack_connect pure_data_0:output13 Non-Mixer\ \(pdlooper_out\):Other1\/in-2
#jack_connect Non-Mixer\ \(pdlooper_out\):Other1/\out-1 Non-Mixer/Master:in-1
#jack_connect Non-Mixer\ \(pdlooper_out\):Other1/\out-2 Non-Mixer/Master:in-2

#jack_connect pure_data_0:output14 Non-Mixer\ \(pdlooper_out\):Other2\/in-1
#jack_connect pure_data_0:output15 Non-Mixer\ \(pdlooper_out\):Other2\/in-2
#jack_connect Non-Mixer\ \(pdlooper_out\):Other2/\out-1 Non-Mixer/Master:in-1
#jack_connect Non-Mixer\ \(pdlooper_out\):Other2/\out-2 Non-Mixer/Master:in-2



#jack_disconnect pure_data_0:output0 system:playback_1
#jack_disconnect pure_data_0:output1 system:playback_2
#jack_connect Non-Mixer/Master:out-1 system:playback_1
#jack_connect Non-Mixer/Master:out-2 system:playback_2


# This will kill this script once the children are terminated:
wait


