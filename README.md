# My Dotfiles

This repo contains my config files (within `configs/`) and a bunch of other
scripts that I use (within `bin/`), along with a little bit of documentation.

---

## What This Repo Contains

### Configs I keep updated

* bash/zsh (and general shell configs)
* vim
* compton
* mpd
* tmux
* ncmpcpp
* dunst
* fontconfig
* polybar
* git
* termite
* zathura
* Xresources
* gitconfig
* sxhkd
* redshift

### Configs that I have but whose programs I don't often use

* newsboat
* emacs
* kitty
* mopidy
* rofi

### Other

The `configs/shell/` folder contains configurations that are shared between
shells (aliases, functions, and environment variables).  
For information on what each script in `bin/` does, see `bin/README.md`.  
For information on what my keybindings are, see `docs/keybindings.md`.  
For my extremely flimsy justifications for the terrible things I've done, see
`docs/justification.md`.

---

## Installation

Run symlink.sh in the root directory of this folder.  
This will symlink every file within `config/` into your home directory with a
dot prepended to its file name. For each folder, it will symlink the files to
the dot-prepended version of that folder in your home directory.  
Include the command line argument `-f` to overwrite existing symlinks and files.

---

## Future Plans

In the future, I'd like to include the following:

* More modular vim configuration
* Attempt using Emacs again
* Extra stuff for Termux (Android terminal emulator)
* Move `bin/fre.sh` (bootstrap script) to its own repo and improve it
* Dotfile "theming" that's easy to swap between (not just colour schemes)
* General cleanup
