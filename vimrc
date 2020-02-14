set nocompatible                      " We're running Vim, not Vi!
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'               " vundle itself
Plugin 'junegunn/fzf'                    " fuzzy file finder with Ctrl-p
Plugin 'junegunn/fzf.vim'                " fuzzy file finder with Ctrl-p
Plugin 'ddollar/nerdcommenter'           " easy comments
Plugin 'scrooloose/nerdtree'             " filetree
Plugin 'Xuyuanp/nerdtree-git-plugin'     " Git integration with Nerdtree
Plugin 'garbas/vim-snipmate'             " Textmate-like snippets
Plugin 'honza/vim-snippets'              " dependency
Plugin 'MarcWeber/vim-addon-mw-utils'    " dependency
Plugin 'tomtom/tlib_vim'                 " dependency
Plugin 'vim-ruby/vim-ruby'               " ruby config
Plugin 'tpope/vim-endwise'               " autocomplete end
Plugin 'tpope/vim-rails'                 " rails
Plugin 'tpope/vim-unimpaired'            " adds newlines from normal mode
Plugin 'tpope/vim-repeat'                " Enables dot command repeating for vim-surround, vim-unimpaired, etc
Plugin 'ap/vim-css-color'                " adds color to hex colors in CSS
Plugin 'mkitt/tabline.vim'               " tab improvements
Plugin 'sheerun/vim-polyglot'            " Add highlighting and indentation support for over 50 languages
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
Plugin 'vim-airline/vim-airline-themes'  " Themes for the status bar
Plugin 'mileszs/ack.vim'                 " Search
Plugin 'cakebaker/scss-syntax.vim'       " SCSS syntax
Plugin 'rust-lang/rust.vim'              " Rust lang support
" Plugin 'suan/vim-instant-markdown'       " Markdown preview
Plugin 'euclio/vim-markdown-composer'    " Markdown preview
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
Plugin 'eslint/eslint'                   " JS linter
Plugin 'brigade/scss-lint'               " SCSS linter
Plugin 'jparise/vim-graphql'             " GraphQL syntax
Plugin 'autozimu/LanguageClient-neovim'  " Language Server
Plugin 'elmcast/elm-vim'                 " Elm language integration
" Plugin 'ryanoasis/vim-devicons'          " File icons for languages
Plugin 'ludovicchabant/vim-gutentags'    " CTag manager
Plugin 'slashmili/alchemist.vim'         " Better Elixir integration
Plugin 'posva/vim-vue'                   " Adds syntax hilighting for Vue
Plugin 'b4b4r07/vim-hcl'                 " Hashicorp Configuration Lang support
call vundle#end()                        " required

" Source configuration
source ~/.vim/settings.vim
source ~/.vim/mappings.vim
source ~/.vim/hooks.vim
