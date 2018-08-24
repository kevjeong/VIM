set autoindent
set expandtab
set shiftwidth=4
set relativenumber 
set number
syntax enable
set hlsearch
set tabstop=4
set softtabstop=4
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set incsearch
set nowrap
set ruler
set ignorecase
set smartcase

colorscheme badwolf

" load tags file generated from universal-ctags if one exists
set tags+=./tags

map <C-n> :NERDTreeToggle<CR>
map <F2> :colorscheme atom<CR>
map <F3> :colorscheme badwolf<CR>
map <F4> :colorscheme iceberg<CR>

nnoremap <silent> + :exe 'vertical resize'. string(&columns * 0.75)<CR>
nnoremap <silent> - :exe 'vertical resize'. string(&columns * 0.25)<CR>

function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

execute pathogen#infect()
syntax on
filetype plugin indent on
call pathogen#helptags()

" enable line numbers in NERDTree
let NERDTreeShowLineNumbers=1
" " make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
