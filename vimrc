call plug#begin('~/.vim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

vmap <leader>p :call CocAction('format')<CR>
nmap <leader>p :call CocAction('format')<CR>
inoremap <silent><expr> <F8> coc#refresh()
nmap <space>e :CocCommand explorer<CR>
command! -nargs=0 Prettier :CocCommand prettier.formatFile

set nocompatible
set switchbuf=usetab
" Deletes in Normal mode previous word with Ctrl-backspace
nnoremap <C-h> db
nnoremap <space>p :Files<return>
nnoremap <space>g :GFiles<return>
nnoremap <C-F1> gT
nnoremap <F1> gt
nnoremap <F2> :w <return>
nnoremap <C-F2> :wa<return>
nnoremap <F5> :bd <return>
nnoremap <C-F5> :q <return>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
syntax on 
set relativenumber 
set noswapfile 
set hlsearch 
set ignorecase
set incsearch 
set ruler
set tabstop=2
set expandtab
set autoread
set ai
set si
set backspace=indent,eol,start
