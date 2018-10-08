"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/lds/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/lds/.local/share/dein')
    call dein#begin('/home/lds/.local/share/dein')

    " Let dein manage dein
    " Required:
    call dein#add('/home/lds/.local/share/dein/repos/github.com/Shougo/dein.vim')
    call dein#add('rafi/awesome-vim-colorschemes')
    call dein#add('scrooloose/nerdtree')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('zchee/deoplete-clang')
    " Add or remove your plugins here like this:
    "call dein#add('Shougo/neosnippet.vim')
    "call dein#add('Shougo/neosnippet-snippets')

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

"End dein Scripts-------------------------

if (has("termguicolors"))
    set termguicolors
endif


" Theme

colorscheme onedark

syntax enable

set nu


" tab settings
set softtabstop=0 noexpandtab
set shiftwidth=4 smarttab


" NERDTree configuration

" autocmd vimenter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Setup clang completion
let g:deoplete#sources#clang#libclang_path = '/usr/lib/x86_64-linux-gnu/libclang.so' 
let g:deoplete#sources#clang#clangheaders = '/usr/include/clang'
let g:deoplete#sources#clang#std = {'c': 'c11', 'cpp': 'c++11'}

call deoplete#enable()
