#!/bin/bash
#创建目录
mkdir ~/.vim
mkdir ~/.vim/autoload

#安装vim-plug作为插件管理器
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#存放vim-plug下载插件的地方
mkdir ~/.vim/plugged

touch ~/.vimrc

{
    echo "syntax on"
    echo "set completeopt+=menu,preview"
    echo "set tabstop=4"
    echo "set shiftwidth=4"
    echo "set number"
} >> ~/.vimrc

{
    "call plug#begin('~/.vim/plugged')"
    "Plug 'scrooloose/nerdtree'"
    "call plug#end()"
} >> ~/.vimrc

echo "请vim中 运行：PlugInstall"
