set nocompatible
set encoding=utf-8
scriptencoding utf-8

call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'mathstuf/vim-fugitive', { 'branch':  'git-workdir-support' }

" Add plugins to &runtimepath
call plug#end()
