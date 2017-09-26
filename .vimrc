""vundle.vim
set backspace=2
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-scripts/taglist.vim'

Plugin 'jiangmiao/auto-pairs'
let g:AutoPairsMultilineClose = 0
let g:AutoPairsFlyMode = 0

Plugin 'Chiel92/vim-autoformat'

" Waka Time, website: wakatime.com
"Plugin 'wakatime/vim-wakatime'
"
Plugin 'tczengming/autoload_cscope.vim'

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
"
" Taglist Settings
"let Tlist_Show_One_File=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1
"let Tlist_Use_Right_Window=1
 
set nu
set sw=4
set ts=4
set expandtab
set smarttab
syntax on
set autoindent
set hlsearch
set foldmethod=indent
set foldlevel=99

" The script below is used for statusline under the window
set statusline+=%F
set statusline+=%=
set statusline+=line:\ [%l
set statusline+=/ 
set statusline+=%L]
set statusline+=\ col:\ %c
"0 -> never display the status line
"1 -> only if there are at least two windows
"2 -> always display
set laststatus=2

"highlight current line
"resource: xuebuyuan.com/1032383.html
"set cursorline
"hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white

" for color scheme
"syntax enable
"set background=dark
"colorscheme solarized
"let g:solarized_termtrans=1
"let g:solarized_contrast="normal"
"let g:solarized_visibility="normal"
"
" use Ctrl-h to the previous tab, and Ctrl-l to the next tab
map <C-h> gT
map <C-l> gt
set tags=./tags;,tags
set tags+=/home/lyn/Codes/cpp_study/cpp_src/tags
set autochdir

" For cscope
nmap ff :cs find g <C-R>=expand("<cword>")<CR><CR>

