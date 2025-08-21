#!/bin/sh
brew install libxml2 gcc libgccjit autoconf coreutils curl dbus expat gcc gmp gnu-sed gnutls jansson libffi libiconv librsvg libtasn1 libunistring libxml2 little-cms2 mailutils make ncurses nettle pkg-config sqlite texinfo tree-sitter zlib imagemagick libxaw libxft freetype cairo harfbuzz font-fira-code
git clone --depth=1 --branch emacs-30 https://github.com/emacs-mirror/emacs.git
cd emacs
./autogen.sh
./configure --with-json --with-modules --with-harfbuzz --with-compress-install \
            --with-threads --with-included-regex --with-x-toolkit=no --with-zlib --without-sound \
            --without-xpm --with-jpeg --without-tiff --without-gif --with-png --with-cairo \
            --without-rsvg --with-imagemagick  --without-toolkit-scroll-bars \
            --without-gpm --without-dbus --without-pop \
            --without-mailutils --without-gsettings --without-pop --with-native-compilation=aot
make -j4
