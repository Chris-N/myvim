myvim
=====

My personal settings for .vimrc

First: get vim plugin vundle (package manager)
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

*might need to mkdir -p ~/.vim/bundle*

Second: move .vimrc configuration file
mv ~/myvim/.vimrc ~/.vimrc

Third: install plugins from .vimrc
vim (run :PluginInstall)

Fourth: Ycm dependencies
sudo apt-get install build-essential cmake
sudo apt-get install python-dev

Fifth: YouCompleteMe needs ycm_libs
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer --omnisharp-completer

*parameters are optional if want c# must install
sudo apt-get install xbuild*



Reference:
https://github.com/gmarik/Vundle.vim
https://valloric.github.io/YouCompleteMe/

