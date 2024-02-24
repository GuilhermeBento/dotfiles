git clone https://github.com/vim/vim.git
cd vim/src
./configure --with-features=hudge \
            --enable-pythoninterp=no \
            --enable-python3interp \
            --with-python3-command=/usr/bin/python3
            --enable-gui=auto \
            --enable-multibyte \
            --enable-largefile \
            --enable-fail-if-missing \
            --enable-cscope \
            --enable-rubyinterp \
            --enable-tclinterp \
            --enable-terminal \
            --enable-nodejsinterp \
            --enable-clipboard \
            --with-x \


make
sudo make install
