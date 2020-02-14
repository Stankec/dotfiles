" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Check spelling in Markdown files
autocmd BufRead,BufNewFile *.md,*.tex setlocal spell

" Disable backups for crontab files (they cause crontab -e to fail)
autocmd filetype crontab setlocal nobackup nowritebackup

" Neomake
" autocmd BufEnter,BufWritePost * NeomakeSh! ctags -R
autocmd BufEnter,BufWritePost * Neomake
" autocmd! BufEnter,BufWritePost * Neomake! clippy
