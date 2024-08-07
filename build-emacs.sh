#!/bin/sh
sudo apt-get install build-essential texinfo libx11-dev libxpm-dev libjpeg-dev libpng-dev libgif-dev libtiff-dev libgtk2.0-dev libncurses-dev gnutls-dev libgtk-3-dev libxml2-dev libjansson-dev librsvg2-dev librsvg2-2 libgccjit0 libgccjit-11-dev libmagickwand-dev libtree-sitter-dev libtree-sitter0
git clone --depth=1 --branch emacs-29.3 https://github.com/emacs-mirror/emacs.git
cd emacs
./autogen.sh
./configure --with-json --with-modules --with-harfbuzz --with-compress-install \
            --with-threads --with-included-regex --with-zlib --without-sound \
            --without-xpm --with-jpeg --without-tiff --without-gif --with-png \
            --with-rsvg --with-imagemagick  --without-toolkit-scroll-bars \
            --without-gpm --without-dbus --without-makeinfo --without-pop \
            --without-mailutils --without-gsettings --without-pop --with-native-compilation \
	    CFLAGS="-O3 -pipe -march=native -fomit-frame-pointer" # \
	    # LDFLAGS="-static"
if [ $? -neq 0 ]; then
   echo "Error while configuring"
   exit 1
fi
make -j4
