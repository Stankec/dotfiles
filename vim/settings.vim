let mapleader = ","          " map leader key to comma

" silent !stty -ixon
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype plugin on    " Enable filetype-specific plugins

" Set 256 color and colorscheme
set t_Co=256
colorscheme monokai

" Set encoding
set encoding=utf-8
set termencoding=utf-8

" Use ag instead of grep
set grepprg=ag\ --nogroup\ --nocolor

" Set tab to 2 spaces, disable wrapping, tweaks
set shiftwidth=2            " use 2 spaces for indenting
set nowrap                  " don't wrap text
set tabstop=2               " Tab counts as 2 spaces
set expandtab
set smarttab

set number                  " Show line numbers
" set relativenumber        " Show relative line numbers

set backspace=2

" Show trailing and preceeding whitespace, show tabs
set list
set listchars=""
set listchars=tab:\|\ 
set listchars+=trail:.
set listchars+=extends:>
set listchars+=precedes:<

" Display all possible results with tab completion
set wildmenu
set wildmode=longest:full,full

" Search tweaks
set hlsearch
set incsearch
set ignorecase
set smartcase

set confirm " Ask to save changes if there are unsaved changes instead of not exiting

set mouse=a " Enable mouse in all modes

" Never hide the mouse
set nomousehide

set laststatus=2 " Always show the status bar

" set colorcolumn=80 " Color columns after 80

" Position splits logically
set splitbelow
set splitright

" Always use the system clibpoard
" set clipboard=unnamed
