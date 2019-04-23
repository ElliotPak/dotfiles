# Keybindings

This file contains a list of keybindings that this setup uses.

Note that keybindings are separated into different files: Anything i3 specific
is within the i3 configuration file, whereas other keybinds are within the
sxhkd configuration file.

## i3gaps Keybindings

Wherever *Mod* is mentioned, it by default refers to the Super (Windows) key.
You can manually change this within the i3 configuration file.

| Keybinding               | Action                                                                                   |
|--------------------------|------------------------------------------------------------------------------------------|
| *Mod + Shift + q*        | Kill currently focused window                                                            |
| *Mod + h/j/k/l*          | Move focus to different windows (you can use keyboard equivalents for this as well)      |
| *Mod + Shift + h/j/k/l*  | Move currently focused window around (you can use keyboard equivalents for this as well) |
| *Mod + Ctrl + y/u/i/o*   | Resize currently focused window                                                          |
| *Mod + comma*            | Newly spawned windows are spawned horizontally                                           |
| *Mod + period*           | Newly spawned windows are spawned vertically                                             |
| *Mod + Shift + comma*    | Move current workspace to the output on the right                                        |
| *Mod + Shift + period*   | Move current workspace to the output on the left                                         |
| *Mod + f*                | Enter fullscreen mode for the focused container                                          |
| *Mod + s*                | Change to stacking layout                                                                |
| *Mod + t*                | Changed to tabbed layout                                                                 |
| *Mod + /*                | Toggle whether windows are split                                                         |
| *Mod + Space*            | Make a window float                                                                      |
| *Mod + Shift + Space*    | Toggle focus between floating and non-floating windows                                   |
| *Mod + (number)*         | Go to numbered workspace                                                                 |
| *Mod + Shift + (number)* | Move focused window to numbered workspace                                                |
| *Mod + z/x*              | Increase/decrease inner gaps                                                             |
| *Mod + Shift + z/x*      | Increase/decrease outer gaps                                                             |
| *Mod + g*                | Restore gaps to the default settings                                                     |
| *Mod + Shift + g*        | Set all gaps to 0                                                                        |
| *Mod + r*                | Reload i3 configuration                                                                  |
| *Mod + Shift + r*        | Restart i3 in-place

## sxhkd Keybindings

| Keybinding                 | Action                                                                   |
|----------------------------|--------------------------------------------------------------------------|
| *Super + Enter*            | Launch termite (a terminal emulator)                                     |
| *Super + d*                | Launch a terminal-based launcher                                         |
| *Super + Shift + d*        | Launch termite to run one command                                        |
| *Super + Ctrl + Shift + d* | Launch rofi                                                              |
| *Super + m*                | Launch ncmpcpp (a music player for mpd)                                  |
| *Super + Shift + m*        | Display song that mpd is currently playing                               |
| *Super + Ctrl + s*         | Screenshot the entire screen                                             |
| *Super + Shift + s*        | Screenshot a section of the screen                                       |
| *Super + w*                | Launch Firefox                                                           |
| *Super + e*                | Launch pcmanfm (a file manager)                                          |
| *Super + Ctrl + l*         | Lock the screen (using `bin/lock`)                                       |
| *Super + b*                | Cycle bars (using `bin/cycle-bar`)                                       |
| *Super + Shift + i*        | Display system info as a notification (using `bin/sys-info`)             |
| *Super + Shift + w*        | Swap to a random wallpaper/colourscheme (using `bin/theme`)              |
| *Super + Ctrl + w*         | Swap between colourschemes for the current wallpaper (using `bin/theme`) |
| *Super + plus*             | Increase volume                                                          |
| *Super + minus*            | Decrease volume                                                          |
| *Super + p*                | Toggle music (running via mpd) between play and pause                    |
| *Super + [*                | Go to previous track                                                     |
| *Super + ]*                | Go to next track                                                         |
| *Super + Shift + [         | Skip back 5 seconds in the current song                                  |
| *Super + Shift + ]         | Skip forward 5 seconds in the current song                               |
