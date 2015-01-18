myvim
=====

My personal settings for .vimrc

*First: get vim plugin vundle (package manager)
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

***might need to mkdir -p ~/.vim/bundle***

Second: move .vimrc configuration file
mv ~/myvim/.vimrc ~/.vimrc

Third: install plugins from .vimrc
vim (run :PluginInstall)

Reference:
-https://github.com/gmarik/Vundle.vim
