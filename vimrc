"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This is the main vimrc file, keep only plugin-related
" configurations here. If plugin configuration consists of
" more than a couple of lines, move it into separate file.
"
" Organization:
"    * ~/.vim/settings.vim            - settings
"    * ~/.vim/mappings.vim            - mappings
"    * ~/.vim/autocommands.vim        - auto commands
"    * ~/.vim/local/<plugin_name>.vim - settings and mappings for
"                                       specific plugin
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible                      " We're running Vim, not Vi!
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'               " vundle itself
Plugin 'junegunn/fzf'                    " fuzzy file finder
Plugin 'ddollar/nerdcommenter'           " easy comments
Plugin 'scrooloose/nerdtree'             " filetree
Plugin 'Xuyuanp/nerdtree-git-plugin'     " Git integration with Nerdtree
Plugin 'garbas/vim-snipmate'             " Textmate-like snippets
Plugin 'honza/vim-snippets'              " dependency
Plugin 'MarcWeber/vim-addon-mw-utils'    " dependency
Plugin 'tomtom/tlib_vim'                 " dependency
" Plugin 'scrooloose/syntastic'            " syntax checker
Plugin 'vim-ruby/vim-ruby'               " ruby config
Plugin 'tpope/vim-endwise'               " autocomplete end
Plugin 'tpope/vim-rails'                 " rails
Plugin 'tpope/vim-unimpaired'            " adds newlines from normal mode
Plugin 'tpope/vim-repeat'                " Enables dot command repeating for vim-surround, vim-unimpaired, etc
Plugin 'ap/vim-css-color'                " adds color to hex colors in CSS
Plugin 'mkitt/tabline.vim'               " tab improvements
Plugin 'sheerun/vim-polyglot'            " Add highlighting and indentation support for over 50 languages
" Plugin 'jiangmiao/auto-pairs'            " autoclose brackets
Plugin 'tpope/vim-surround'              " surround objects with brackets
Plugin 'flazz/vim-colorschemes'          " color schemes
Plugin 'christoomey/vim-tmux-navigator'  " Navigate between TMUX and VIM semelessly
Plugin 'rhysd/conflict-marker.vim'       " easyly resolve merge conflicts
Plugin 'slim-template/vim-slim'          " slim syntax hilighting
Plugin 'tpope/vim-fugitive'              " git integration
Plugin 'airblade/vim-gitgutter'          " Git diff in gutter
Plugin 'szw/vim-tags'                    " CTags integration
Plugin 'benekastah/neomake'              " Neomake asynchronos tasks
Plugin 'bling/vim-airline'               " Status bar improvemet
Plugin 'mileszs/ack.vim'                 " Search
Plugin 'cakebaker/scss-syntax.vim'       " SCSS syntax
Plugin 'rust-lang/rust.vim'              " Rust lang support
Plugin 'suan/vim-instant-markdown'       " Markdown preview
Plugin 'asux/vim-capybara'               " Capybara integration
Plugin 'thoughtbot/vim-rspec'            " VIM Rspec integration
Plugin 'chiel92/vim-autoformat'          " Automatically format code
Plugin 'nelstrom/vim-markdown-folding'   " Folding for Markdown files
Plugin 'vim-utils/vim-ruby-fold'         " Folding for Ruby files
Plugin 'dracula/vim'                     " Dracula Vim theme
Plugin 'tpope/vim-bundler'               " Vim goodies for Bundler
" Plugin 'craigemery/vim-autotag'          " automatic CTag generation
Plugin 'hwartig/vim-seeing-is-believing' " Inline code execution
" Plugin 'xolox/vim-misc'                  " Utility for autoloading
" Plugin 'xolox/vim-easytags'              " Autimatically create ctags
Plugin 'paredit.vim'                     " Structiural editing of Lisb S expressions
Plugin 'luochen1990/rainbow'             " Color parenthesis for easyer visual matching
call vundle#end()                        " required

filetype plugin indent on             " required

" Source configuration
source ~/.vim/settings.vim
source ~/.vim/mappings.vim
source ~/.vim/hooks.vim

" Enable folding expressions
set nocompatible
if has("autocmd")
  filetype plugin indent on
endif

" Use AG instead of grep for ctrl-p
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" Don't use cache with ctrl-p
let g:ctrlp_use_caching = 0

" Only show MRU files relative to current file
let g:ctrlp_mruf_relative = 1

" Check syntax w/ syntastic on file open
" let g:syntastic_check_on_open = 1
