" map leader key to comma
let mapleader = "\<Space>"

" Enable syntax highlighting
syntax on

" Set 256 color and colorscheme
set t_Co=256
colorscheme molokai

" Set encoding
" set encoding=utf-8
set termencoding=utf-8

" Use ag instead of grep
" Run brew install the_silver_searcher to install ag
set grepprg=ag\ --nogroup\ --nocolor

" Turn off swap files
set noswapfile

" Autoreload files when they change
set autoread

" Set tab to 2 spaces, disable wrapping, tweaks
set shiftwidth=2
set nowrap
set tabstop=2
set expandtab
set smarttab

" Show line numbers
set number

" Show relative line numbers
" set relativenumber

" Make backspace behave sane
set backspace=2

" Show trailing and preceeding whitespace, show tabs
set list
set listchars=""
set listchars=tab:\|\
set listchars+=trail:.
set listchars+=extends:>
set listchars+=precedes:<

" Display all possible command results with tab completion
set wildmenu
set wildmode=longest:full,full

" Search tweaks
set hlsearch
set incsearch
set ignorecase
set smartcase

" Ask to save changes if there are unsaved changes instead of not exiting
set confirm

" Enable mouse in all modes
set mouse=a

" Never hide the mouse
set nomousehide

" Always show the status bar
set laststatus=2

" Position splits logically
set splitbelow
set splitright

" NERDTree configuration
let NERDTreeShowHidden=1

" Configure Vim-CTags
let g:vim_tags_main_file = '.tags'

" Syntastic
" let g:syntastic_ruby_checkers = ['mri', 'rubocop']
" let g:syntastic_ruby_rubocop_args = "-D -R"

" Neomake
" let g:neomake_ruby_rubocop_maker = {
"       \ 'args': '-D -R'
"       \}
autocmd! BufEnter,BufWritePost * Neomake

" Airline
let g:airline_powerline_fonts = 1

" Always use the system clibpoard
" set clipboard=unnamed

" Enable true color mode
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Color columns after 80
set colorcolumn=80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/
