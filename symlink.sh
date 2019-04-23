#!/bin/bash

# parts of this script have been inspired by aaronbieber's linkall script
# https://github.com/aaronbieber/dotfiles/blob/master/linkall

OPTIONS=""
if [ $# -ne 0 ]; then
    if [ "$1" = "-f" ]; then
        OPTIONS="-f"
    else
        echo "Unrecognised option: $1"
        exit 1
    fi
fi

RED="\033[0;31m"
GREEN='\033[0;32m'
NC='\033[0m'

CONFIGPATH=$(pwd)/configs
BINPATH=$(pwd)/bin

# symlink a dotfile to its destination. also outputs status messages
# on success/failure
link_dotfile() {
    src=$1
    dest=$2
    OPTIONS=$3
    ERROR=$(ln -s $OPTIONS $src $dest 2>&1 > /dev/null)
    if [ $? -eq 0 ]; then
        echo -e "$GREEN$dest$NC was linked successfully"
    else
        if ! [ -f "$newfilepath" ]; then
            echo -e "$RED$dest$NC was not linked. Reason:\n    $ERROR"
        fi
    fi
}

# performs dotfile symlinking for a whole directory. creates the dir if it
# doesn't exist
link_directory_dotfiles() {
    file=$1
    dotfile=$2
    BASENAME=$3
    nodotfiledir=${file#$dotfile}
    newfilepath=~/.$BASENAME$nodotfiledir
    if ! [ -d $(dirname $newfilepath) ]; then
        mkdir -p $(dirname $newfilepath) && echo "Created directory $(dirname $newfilepath)"
    fi
    link_dotfile "$file" "$newfilepath" "$OPTIONS"
}

# main flow of script starts here
for dotfile in $(find $CONFIGPATH -mindepth 1 -maxdepth 1); do
    BASENAME=${dotfile##*/}
    if [ -d $dotfile ]; then
        if ! [ -e ~/.$BASENAME ]; then
            mkdir ~/.$BASENAME
            echo Created ~/.$BASENAME.
        fi
        # files and symlinks must be seperate, otherwise termux doesnt like it
        for file in $(find $dotfile -type f); do
            link_directory_dotfiles "$file" "$dotfile" "$BASENAME"
        done
        for file in $(find $dotfile -type l); do
            link_directory_dotfiles "$file" "$dotfile" "$BASENAME"
        done
    elif [ -f $dotfile ]; then
        link_dotfile "$dotfile" "$HOME/.$BASENAME" "$OPTIONS"
    elif [ -h $dotfile ]; then
        link_dotfile "$dotfile" "$HOME/.$BASENAME" "$OPTIONS"
    fi
done

if ! [ -e "$HOME/bin" ]; then
    ln -s $HOME/dotfiles/bin $HOME/bin
    echo "Symlinked $HOME/bin to \"$BINPATH\"."
fi
