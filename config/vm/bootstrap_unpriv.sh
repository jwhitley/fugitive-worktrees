#!/usr/bin/env bash

set -e

ln -s /vagrant/.vimrc $HOME/.vimrc
ln -s /vagrant/.vim $HOME/.vim

bash -lc 'vim -c :PlugInstall -c :qall! >& /dev/null'
