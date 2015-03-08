"This file will apply all changes to vim 7.4 on start-up!
"======================================================
" Vundle - Vim plugin manager
" https://github.com/gmarik/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" syntax completion
" Plugin 'Valloric/YouCompleteMe'

" syntax checking
" Bundle 'scrooloose/syntastic'
" let g:syntastic_check_on_open = 1
" let g:syntastic_enable_signs = 1
" let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_html_checkers = ['tidy']
" let g:syntastic_enable_prolog_checkers = 0

Bundle 'scrooloose/nerdtree'
let NERDTreeIgnore = ['\.pyc$']

"Plugin 'vim-scripts/django.vim'
"setfiletype htmldjango

Plugin 'surround.vim'
Plugin 'snipMate'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"======================================================


" Automatic reloading of .vimrc
"autocmd! bufwritepost .vimrc source %


"---Syntax highlighting---
"{
	syntax on

	"This changes the comment color!
	highlight Comment ctermfg=darkgrey
    highlight SpecialKey ctermfg=lightcyan
	"highlight String ctermfg=black ctermbg=white
	"highlight Float ctermfg=yellow
	"highlight SpecialChar ctermfg=red

	" NERDTree Directory
	highlight Directory guifg=#FF0000 ctermfg=darkgreen

"}
" Rebind <Leader> key
"{
    let mapleader=","
"}

"---Text formating---
"{
    "ts = tabstop, sts = softtabstop, sw = shiftwidth
    "et = expandtab, ai = autoindent, tw = textwidth
	set ts=3 sts=3 sw=3 et 
   set tw=79
   set autoindent
   set ttyfast
"}

"---Basic UI tools---
"{
    set number
    set cursorline

    " Search insensitive
    set hlsearch
    set incsearch
    set ignorecase
    set smartcase

    " Better copy & paste
    "set paste
    set pastetoggle=<F3>
    set clipboard=unnamed

    " Easier moving of blocks
    vnoremap < <gv 
    vnoremap > >gv 

"}

"---Key Mapping---
"{
    "map <C-s> :w<CR>
    "map! <C-s> <Esc>:w<CR>

    nnoremap n nzz
    nnoremap N Nzz
    nnoremap <C-d> <C-d>zz
    nnoremap <C-u> <C-u>zz
    nnoremap <C-o> <C-o>zz
    nnoremap <C-i> <C-i>zz
    nnoremap <Tab> <Tab>zz


    nnoremap <F2> :NERDTreeToggle<CR>
    "nmap <F5> :grep <C-r><C-w> *<CR>

    " Insert Mode
    inoremap jk <Esc>
"}


"---Set Web Dev Color Scheme---
"{
	"colorscheme bjornenki
"}

"---Status Line---
"{
    " always show status line
    set laststatus=2

    set statusline=%F         " Full Path to the file
    set statusline+=\ -\      " Separator
    set statusline+=FileType: " Label
    set statusline+=%y        " Filetype of the file

    " modified flag
    set statusline+=%#wildmenu#
    set statusline+=%m
    set statusline+=%*

    "set statusline+=\ -\      " Separator
    set statusline+=%=   " Switch to the right side
    set statusline+=%2c,   " Column number
    set statusline+=%l   " Current line
    set statusline+=/    " Separator
    set statusline+=%L   " Total lines
"}


"---File Type---
"{
	filetype plugin on
	filetype indent on
	"Django.vim
	au BufNewFile,BufRead *.html set filetype=htmldjango
"}
"---Cursor Customization---
"{
"if has("autocmd")
"au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"endif

"}

