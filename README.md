# pdlooper

Pdlooper is a looping software, typically used in live setups (but not only), with audio and MIDI support. It is written in [Pure Data](https://puredata.info/) - [Purr Data](https://github.com/agraef/purr-data) actually, though I'm trying to limit the number of externals used.   
I've been trying out open-source looping software for a while and could not find exactly what I was looking for. I have pretty much no skills in "proper" programming languages so I didn't really have the possibility (unfortunately) to improve any of the tools I've tried, so I decided to build my own from scratch.  
Not sure whether this will actually be usable (especially in terms of real-time performance) but it's at least fun to learn!

## Usage concept
Like the tools I was inspired by (see below), I intend to use Pdlooper in a modular setup, involving for example:
- physical MIDI controllers (control surface such as Akai APCs, Novation Launchpads, Ableton Push), including some knobs and faders
- MIDI keyboard(s)
- Software synthesizers (Fluidsynth, ZynAddSubFx/Zyn-Fusion, Helm, Calf suite's synths...)
- Mixer (Non-Mixer, jack_mixer, Ardour)
- Lv2 plugin host for synths and effects (Carla, Ardour, Non-Mixer)

## Current features
The current minor version, while not ready for production, is considered "jammable" i.e. it can be used for basic jamming (but there are still many visual and audio glitches).
- Record audio tracks in stereo
- Loop audio tracks (doesn't display the wave form to avoid the audio drop-out when resizing the array)
- Set tempo by tapping
- Controllable via MIDI controller (I use an AKAI APC Mini with 8\*8 buttons) including outgoing MIDI message to light up the controller's LEDs
- Save tracks as wav files
- configuration panel for every track:
  - select the output channels
  - change the name
  - adjust volume and panning
  - change the number of bars
  - clear the track

That's what it currently looks like:
![](screenshots/latest.png)

## Current issues
- Can't easily load saved files

## Planned features
- File management
  - Save session file
  - Load session file and wav files as loops
- Control tracks
  - groups/scenes of tracks to be started at once
  - automatic set of tracks following each other (incl random)
- More looping
  - tracks for midi controls
  - tracks for midi sequences?
- Fancy stuff
  - include knobs and faders in the UI to make it a single interface between my physical controllers and mixers/plugins (rather than connecting the controllers to each mixer/effect host)
  - include lv2 host with [lv2plugin~]?
  - timeline editor to arrange loops (*à la* seq24/seq64)?
  - playlist?
  - support NSM protocol for use with Ray-Session?


## Inspiration
This looper is heavily inspired from Seq24/[Seq64](https://github.com/ahlstromcj/sequencer64) and [Luppp](http://openavproductions.com/luppp/)/[Loopp](https://git.netzspielplatz.de/soundship/loopp), and takes some ideas from [FreeWheeling](https://github.com/free-wheeling/freewheeling) and [SuperBoucle](https://github.com/Vampouille/superboucle), and probably others I don't remember (and some other well-known commercial software).
