# imagepaste.vim

A vim plugin to paste image from clipboard using pngpaste under MacOS Catalina.

## Use

Plug 'xiaoouwang/imagepaste.vim'

## require

brew install pngpaste

## instructions

use leader p or :imagePaste to invoke the plugin. 

The file is saved at img/filename.png

## .vimrc

autocmd FileType markdown nmap <buffer><silent> <leader>p :call imagepaste#paste()<CR>

