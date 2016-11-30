""vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'

 Plugin 'jiangmiao/auto-pairs'
 let g:AutoPairsMultilineClose = 0
 let g:AutoPairsFlyMode = 0
 Plugin 'Chiel92/vim-autoformat'
 " search files quickly
 Plugin 'ctrlpvim/ctrlp.vim'
 " Scroll more smoothly
 Plugin 'yonchu/accelerated-smooth-scroll'
 " The NerdTree: Files Tree in vim
 Plugin 'scrooloose/nerdtree'
 map <C-n> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

 "colorschemes
 Plugin 'altercation/vim-colors-solarized'
 Plugin 'tomasr/molokai'


 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on
 "
 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just
 "":PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line
 
set nu
set sw=4
set ts=4
set expandtab
set smarttab
syntax on
set autoindent
set hlsearch
set statusline+=%f
set laststatus=2

"highlight current line
"resource: xuebuyuan.com/1032383.html
set cursorline
hi CursorLine cterm=NONE ctermbg=blue ctermfg=white
hi CursorColumn cterm=NONE ctermbg=blue ctermfg=white

" for color scheme
"syntax enable
"set background=dark
"colorscheme solarized
"let g:solarized_termtrans=1
"let g:solarized_contrast="normal"
"let g:solarized_visibility="normal"

