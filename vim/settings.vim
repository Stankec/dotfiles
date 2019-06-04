" map leader key to comma
let mapleader = "\<Space>"

" Enable syntax highlighting
syntax on

" Set 256 color and colorscheme
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256
set termguicolors

" colorscheme molokai
try
    if !empty($VIM_COLOR)
        colorscheme $VIM_COLOR
    else
        " Prefered default colorscheme
        colorscheme dracula
    endif
catch /^Vim\%((\a\+)\)\=:E185/
    " Colorschemes not installed yet
    " This happens when first installing bundles
    colorscheme default
endtry
" colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

" Set encoding
set encoding=utf-8
set termencoding=utf-8

" Use rg instead of grep
set grepprg=rg\ --color\ never\ --no-heading

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
set relativenumber

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
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "+",
    \ "Renamed"   : "→",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "-",
    \ "Dirty"     : "x",
    \ "Clean"     : "✓",
    \ "Ignored"   : "_",
    \ "Unknown"   : "?"
    \ }

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

" Always use the system clibpoard
" set clipboard=unnamed

" Enable true color mode
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Color columns after 80
set colorcolumn=80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

" Disable folding for large files
let g:ruby_fold_lines_limit = 300

" Enable parenthasis highlighting
let g:rainbow_active = 1

" Enable folding expressions
if has("autocmd")
  filetype plugin indent on
endif

" Use RG instead of grep for ctrl-p and Ack
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif

" Language Server configuration
let g:LanguageClient_serverCommands = {
  \ 'ruby': ['solargraph', 'stdio'],
  \ 'rust': ['rustup', 'run', 'stable', 'rls'],
  \ }
" nnoremap <silent> T :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <F2> :call LanguageClient#textDocument_rename()<CR>
" nnoremap <localleader>lj :call LanguageClient_textDocument_definition()<CR>
" nnoremap T :call LanguageClient_textDocument_hover()<CR>
" timeout has to be bigger than time needed to index your project
let g:LanguageClient_waitOutputTimeout = 1000
let g:LanguageClient_autoStart=1
let g:LanguageClient_autoStop=1

" Markdown composer
" let g:markdown_composer_syntax_theme = 'dracula'

" NeoMake
let g:neomake_ruby_enabled_makers = ['rubocop']

