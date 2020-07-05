# pdlooper

This is my first project using Pure Data (Purr Data actually).
I've been trying out open-source looping software for a while and could not find exactly what I was looking for. I have pretty much no skills in "proper" programming languages so I didn't reallw have the possibility to improve any of the tools I've tried, so I decided to build my own from scratch.
Not sure whether this will actually be usable (especially in terms of real-time performance) but it's at least fun to learn!

## Current features
- Record audio loops
- Play audio loops
- Set tempo by tapping
- Controllable via MIDI controller (I use an AKAI APC Mini with 8*8 buttons) including outgoing MIDI message to light up the controller's LEDs
- Save loops as wav files
- select the output channels for each loop

## Current issues
- Short freeeze when starting to record, pretty bad.
- Can't easily load saved files

## Planned features
- Save session file
- Load session file and wav files as loops
- Make recording and playing actually stereo (i.e. add an array for each loop)
- groups/scenes of loops to be started at once
- loops for midi controls
- loops for midi sequences?
- include lv2 host with [lv2plugin~]?
- timeline editor to arrange loops (*à la* seq24/seq64)?
- playlist?


## Inspiration
This looper is heavily inspired from Seq24/Seq64 and Luuppp/Loopp, and takes some ideas from FreeWheeling and SuperBoucle (and maybe others I don't remember).
