"BASICS{{{
set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required
set number
set lines=55 columns=130
set guifont=Menlo:h13
set ruler
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set nostartofline
set showcmd
set incsearch
set ignorecase
set smartcase
set mouse=a       " Enable mouse"
set wildmenu        " Command line completion enhanced"
set wildignore+=**/node_modules/**
set wildignore+=**/bower_components/**
set wildignore+=**/dump/**
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set noshowmode    " Hide mode at bottom of the screen (since I use airline)"
set backspace=indent,eol,start  " Make backspace key work as expected"
set incsearch       " Show pattern matches as search is typed"
set encoding=utf-8
set matchpairs+=<:>
set splitbelow
set splitright
set termencoding=utf-8
set laststatus=2
" Syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set foldmethod=syntax
"}}}

"PLUGINS{{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim'
Plugin 'mhinz/vim-signify'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tomtom/tcomment_vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'mxw/vim-jsx'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'bkad/CamelCaseMotion'
Plugin 'lumiliet/vim-twig'
Plugin 'derekprior/vim-trimmer'

call vundle#end()            " required

"ULTISNIPS {{{
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"}}}

"YouCompleteMe{{{
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"}}}

"SYNTASTIC{{{
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_enable_highlighting = 1
"}}}

" vim-airline{{{
" let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_left_sep = '|'
let g:airline_right_sep = '|'
let g:airline_theme='molokai' " others: badwolf
"}}}

" }}}


"Remap ESC
inoremap jk <ESC>
let mapleader = " "

"Personal Hotkeys
nnoremap <leader>; A;<esc>



"Set colorscheme
syntax enable
set background=dark
" let g:solarized_menu=0
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized



"Remap Emmet trigger key
imap hh <C-y>,

map nt :NERDTree<CR>
map <leader>/ <c-_><c-_>


" In your ~/.vimrc
"
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>


" Use tab to jump between blocks, because it's easier
nnoremap <tab> %
vnoremap <tab> %


" Copy to system clipboard
vmap <C-c> :w !pbcopy<cr>
" " Undo, Redo
nnoremap <C-z>  :undo<CR>
inoremap <C-z>  <Esc>:undo<CR>
nnoremap <C-y>  :redo<CR>
inoremap <C-y>  <Esc>:redo<CR>
" Tabs
nnoremap <C-b>  :tabprevious<CR>
inoremap <C-b>  <Esc>:tabprevious<CR>i
nnoremap <C-l>  :tabnext<CR>
inoremap <C-l>  <Esc>:tabnext<CR>i
nnoremap <C-t>  :tabnew<CR>
inoremap <C-t>  <Esc>:tabnew<CR>i
" nnoremap <C-k>  :tabclose<CR>
" inoremap <C-k>  <Esc>:tabclose<CR>i

set scrolloff=3

" Toggle Git Gutter
noremap  <Leader>g :GitGutterToggle<CR>
"
" for vim-jsx
let g:jsx_ext_required = 0

" Adding new line without entering Insert Mode
" nmap <S-Enter> O<Esc>
" nmap <CR> o<Esc>
