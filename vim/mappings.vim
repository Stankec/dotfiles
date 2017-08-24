" C-S for save, C-Q to quit all
map <silent> <c-s> :w<CR>
map <silent> <c-q> :qa<CR>

" Select all with ctrl-a
nmap <silent> <C-a> ggVG

" Copy from visual mode
vmap <silent> <C-c> "+y

" Cut from visual mode
vmap <silent> <C-x> "+d

" Open file tree with leader n
map <silent> <leader>n :NERDTreeToggle<cr>

" Open and close tabs
map <silent> <leader>tn :tabe<CR>
map <silent> <leader>tw :tabclose<CR>

" Split view horizontally and vertically
map <silent> <leader>vs :vsplit<cr>
map <silent> <leader>hs :split<cr>

" Bubble one line w/ shift + movement
nmap <S-k> [e
nmap <S-j> ]e

" Toggle Git blame
nmap <C-b> :Gblame<cr>

" Open FZF
nmap <C-p> :FZF<cr>

" Deselect
nnoremap <F3> :set hlsearch!<CR>

" Prettify code
noremap <F4> :Autoformat<CR>

" Seeing is believing
augroup seeingIsBelievingSettings
  autocmd!

  autocmd FileType ruby nmap <buffer> <F6> <Plug>(seeing-is-believing-mark-and-run)
  autocmd FileType ruby xmap <buffer> <F6> <Plug>(seeing-is-believing-mark-and-run)

  autocmd FileType ruby nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

  autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
  autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing-is-believing-run)
augroup END

" Move between splits w/ C-hjkl
if exists('$TMUX')
  nnoremap  <silent> <C-h> :TmuxNavigateLeft<CR>
  nnoremap  <silent> <C-j> :TmuxNavigateDown<CR>
  nnoremap  <silent> <C-k> :TmuxNavigateUp<CR>
  nnoremap  <silent> <C-l> :TmuxNavigateRight<CR>
else
  nnoremap <silent> <C-h> <C-W>h<CR>
  nnoremap <silent> <C-j> <C-W>j<CR>
  nnoremap <silent> <C-k> <C-W>k<CR>
  nnoremap <silent> <C-l> <C-W>l<CR>
endif
