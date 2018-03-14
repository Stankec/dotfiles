" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Check spelling in Markdown files
autocmd BufRead,BufNewFile *.md,*.tex setlocal spell

" Neomake
" autocmd BufEnter,BufWritePost * NeomakeSh! ctags -R
autocmd BufEnter,BufWritePost * Neomake
" autocmd! BufEnter,BufWritePost * Neomake! clippy
