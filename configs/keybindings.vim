" This is a random fucking comment.
" Only to waste space on your screen :)

" Fzf
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :GFiles<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>fb :Buffers<CR>

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Commentary
nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>

" clangd
nnoremap <leader>h:  CocCommand clangd.switchSourceHeader<CR>
nnoremap <leader>gd: call CocAction('jumpDefinition')<CR>
inoremap <silent><expr> <C-Space> coc#refresh()
nnoremap <leader>m:  Man <cword><CR>

" Disable the Arrow keys
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
