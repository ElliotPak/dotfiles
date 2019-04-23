#!/usr/bin/env bash

fresh__package_update () {
    sudo apt-get update
}

fresh__package_get () {
    sudo apt-get -y install $1
}

fresh__package_get_arch () {
    sudo apt-get install $1
}

fresh__package_add_repo () {
    sudo apt-add-repository $1
}

#clone my dotfiles
fresh__dotfiles () {
    echo === Getting dotfiles... ===
    fresh__package_get git
    git clone https://gitlab.com/Pakelli/dotfiles.git ~/dotfiles
    source ~/dotfiles/symlink.sh
}

fresh__install_essential () {
    #start installing packages
    echo === Installing essential packages for code... ===
    fresh__package_update
    fresh__package_get git
    fresh__package_get vim
    fresh__package_get zsh
    fresh__package_get tmux
    fresh__package_get silversearcher-ag
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install

    echo === Installing xcape dependencies... ===
    fresh__package_get gcc
    fresh__package_get make
    fresh__package_get pkgconfig
    fresh__package_get libX11-dev
    fresh__package_get libxtst-dev
    fresh__package_get libxi-dev

    echo === Installing xcape... ===
    cd ~/Downloads
    git clone https://github.com/alols/xcape.git
    cd xcape
    make
    sudo make install
}

fresh__install_fonts() {
    echo === Installing Iosevka... ===
    fresh__package_get curl
    mkdir .install-temp
    curl -s https://api.github.com/repos/be5invis/Iosevka/releases/latest |\
        grep "browser_download_url.*term-ss06.*.zip" |\
        cut -d : -f 2,3 |\
        tr -d \" |\
        wget -qi
    unzip -d ".install-temp" iosevka-term-ss06-*
    cp .install-temp/ttf/iosevka-term-ss06 $HOME/.fonts

    echo === Installing Overpass... ===
    wget -q https://github.com/RedHatBrand/Overpass/archive/3.0.3.zip
    unzip -d ".install-temp" Overpass*
    cp .install-temp/overpass/* $HOME/.fonts
    cp .install-temp/overpass-mono/* $HOME/.fonts
}

fresh__install_languages () {
    #start installing packages
    echo === Installing languages... ===
    fresh__package_get curl
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
    fresh__package_get apt-transport-https
    echo "deb https://download.mono-project.com/repo/ubuntu vs-xenial main" | sudo tee /etc/apt/sources.list.d/mono-official-vs.list
    curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
    sudo add-apt-repository ppa:gophers/archive
    fresh__package_update
    fresh__package_get vim
    fresh__package_get cmake
    fresh__package_get build-essential

    echo --- Installing python... ---
    fresh__package_get python
    fresh__package_get python3
    fresh__package_get python-pip
    fresh__package_get python3-pip

    echo --- Installing mono... ---
    fresh__package_get mono-devel

    echo --- Installing npm/typescript... ---
    fresh__package_get nodejs
    sudo npm install -g typescript

    echo --- Installing rust... ---
    curl https://sh.rustup.rs -sSf | sh

    echo --- Installing go... ---
    fresh__package_get golang

    echo --- Installing things for completion etc... ---
    cargo install racer
    pip install jedi
    fresh__package_get clang
}

fresh__install_leisure () {
    #start installing packages
    echo === Installing \"leisure\" packages... ===
    wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
    sudo wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/stretch.list
    fresh__package_update

    fresh__package_get firefox
    fresh__package_get franz
    fresh__package_get audacity
    fresh__package_get vlc
    fresh__package_get neofetch
    fresh__package_get mpc
    fresh__package_get mpd
    fresh__package_get ncmpcpp
    fresh__package_get tree
    fresh__package_get pandoc
    fresh__package_get zathura
    fresh__package_get texlive-xelatex
    fresh__package_get mopidy
    fresh__package_get mopidy-spotify
    fresh__package_get mopidy-youtube
    fresh__package_get mopidy-soundcloud
    fresh__package_get mopidy-podcast
}

fresh__install_i3_gaps () {
    echo === Installing i3-gaps... ===
    fresh__package_add_repo ppa:aguignard/ppa
    fresh__package_update
    echo --- Install dependencies... ---
    fresh__package_get libxcb-xrm-dev
    fresh__package_get libxcb1-dev
    fresh__package_get libxcb-keysyms1-dev
    fresh__package_get libpango1.0-dev
    fresh__package_get libxcb-util0-dev
    fresh__package_get libxcb-icccm4-dev
    fresh__package_get libyajl-dev
    fresh__package_get libstartup-notification0-dev
    fresh__package_get libxcb-randr0-dev
    fresh__package_get libev-dev
    fresh__package_get libxcb-cursor-dev
    fresh__package_get libxcb-xinerama0-dev
    fresh__package_get libxcb-xkb-dev
    fresh__package_get libxkbcommon-dev
    fresh__package_get libxkbcommon-x11-dev
    fresh__package_get autoconf
    fresh__package_get libxcb-xrm0
    fresh__package_get libxcb-xrm-dev
    fresh__package_get automake

    echo --- Installing i3-gaps... ---
    fresh__package_get git
    cd ~/Downloads
    git clone https://www.github.com/Airblader/i3 i3-gaps
    cd i3-gaps
    autoreconf --force --install
    rm -rf build/
    mkdir -p build && cd build/
    ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
    make
    sudo make install
}

fresh__install_wm_general () {
    echo --- Installing termite\'s dependencies... ---
    fresh__package_get g++
    fresh__package_get libgtk-3-dev
    fresh__package_get gtk-doc-tools
    fresh__package_get gnutls-bin
    fresh__package_get valac
    fresh__package_get intltool
    fresh__package_get libpcre2-dev
    fresh__package_get libglib3.0-cil-dev
    fresh__package_get libgnutls28-dev
    fresh__package_get libgirepository1.0-dev
    fresh__package_get libxml2-utils
    fresh__package_get gperf

    echo --- Installing termite... ---
    fresh__package_get git
    cd ~/Downloads
    git clone --recursive https://github.com/thestinger/termite.git
    git clone https://github.com/thestinger/vte-ng.git
    echo export LIBRARY_PATH="/usr/include/gtk-3.0:$LIBRARY_PATH"
    cd vte-ng && ./autogen.sh && make && sudo make install
    cd ../termite && make && sudo make install
    sudo ldconfig
    sudo mkdir -p /lib/terminfo/x; sudo ln -s \
    /usr/local/share/terminfo/x/xterm-termite \
    /lib/terminfo/x/xterm-termite
    sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/termite 60

    echo --- Installing polybar\'s dependencies... ---
    fresh__package_get cmake
    fresh__package_get cmake-data
    fresh__package_get libcairo2-dev
    fresh__package_get libxcb1-dev
    fresh__package_get libxcb-ewmh-dev
    fresh__package_get libxcb-icccm4-dev
    fresh__package_get libxcb-image0-dev
    fresh__package_get libxcb-randr0-dev
    fresh__package_get libxcb-util0-dev
    fresh__package_get libxcb-xkb-dev
    fresh__package_get pkg-config
    fresh__package_get python-xcbgen
    fresh__package_get xcb-proto
    fresh__package_get libxcb-xrm-dev
    fresh__package_get i3-wm
    fresh__package_get libjsoncpp-dev
    fresh__package_get libasound2-dev
    fresh__package_get libpulse-dev
    fresh__package_get libmpdclient-dev
    fresh__package_get libiw-dev
    fresh__package_get libcurl4-openssl-dev
    fresh__package_get libxcb-cursor-dev

    echo --- Installing sxhkd... ---
    fresh__package_get sxhkd

    echo --- Installing polybar... ---
    fresh__package_get git
    cd ~/Downloads
    mkdir polybar/build
    cd polybar/build
    cmake ..
    sudo make install

}

fresh__install_wm_extras () {
    echo === Installing window manager extras... ===
    echo --- Installing feh... ---
    fresh__package_get feh

    echo --- Installing music stuff... ---
    fresh__package_get mpc
    fresh__package_get mpd
    fresh__package_get ncmpcpp

    echo --- Installing compton... ---
    fresh__package_get compton

    echo --- Installing rofi... ---
    fresh__package_get rofi

    echo --- Installing dunst... ---
    fresh__package_get dunst
}

fresh__install_zsh_plugins () {
    echo === Installing zsh plugins... ===
    echo --- Installing zsh-syntax-highlighting... ---
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-syntax-highlighting
}

fresh__package_update

if [ $# -ne 0 ]; then
    if [[ $* == *"essential"* ]]; then fresh__install_essential; fi
    if [[ $* == *"fonts"* ]]; then fresh__install_fonts; fi
    if [[ $* == *"languages"* ]]; then fresh__install_languages; fi
    if [[ $* == *"leisure"* ]]; then fresh__install_leisure; fi
    if [[ $* == *"i3-gaps"* ]]; then fresh__install_i3_gaps; fi
    if [[ $* == *"wm-general"* ]]; then fresh__install_wm_general; fi
    if [[ $* == *"wm-extras"* ]]; then fresh__install_wm_extras; fi
    if [[ $* == *"zsh-plugins"* ]]; then fresh__install_zsh_plugins; fi
    if [[ $* == *"dotfiles"* ]]; then fresh__dotfiles; fi
else
    echo Enter one or more of the following options:
    echo essential, fonts, languages, leisure, i3-gaps, wm-general, wm-extras, zsh-plugins, dotfiles
fi
