#!/bin/sh
set -e
sudo apt-get install build-essential texinfo libx11-dev libxpm-dev libjpeg-dev libpng-dev libgif-dev libtiff-dev libgtk2.0-dev libncurses-dev gnutls-dev libgtk-3-dev libxml2-dev libjansson-dev librsvg2-dev librsvg2-2 libgccjit0 libgccjit-13-dev libmagickwand-dev libtree-sitter-dev libtree-sitter0.25 aspell aspell-en gcc-13 cmake libtool-bin libtool
export CC="gcc-13" # should match version of libgccjit installed
git clone --depth=1 --branch emacs-31.1 https://github.com/emacs-mirror/emacs.git emacs31
cd emacs31
./autogen.sh

./configure --with-x-toolkit=no \
            --with-native-compilation=aot \
            --with-pgtk \
	    CFLAGS="-O3 -pipe -march=native -fomit-frame-pointer" # \
	    # LDFLAGS="-static"
if [ $? -neq 0 ]; then
   echo "Error while configuring"
   exit 1
fi
make -j4
