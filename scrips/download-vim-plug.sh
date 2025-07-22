#!/bin/bash
cd ../configs/
if curl -fLo plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim; \
then
    echo "download was a success"
else
    echo "error downloading vim plug!"
    echo "check the git repo:"
    echo "https://github.com/junegunn/vim-plug"
    exit 1
fi
