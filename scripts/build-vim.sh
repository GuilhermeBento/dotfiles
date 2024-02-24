git clone https://github.com/vim/vim.git
cd vim/src
./configure --with-features=huge \
            --enable-python3interp \
            --enable-gui=auto \
            --enable-multibyte \
            --enable-largefile \
            --enable-fail-if-missing \
            --enable-cscope \
            --enable-rubyinterp \
            --enable-tclinterp \
            --enable-terminal \
            --enable-nodejsinterp \
make
sudo make install
