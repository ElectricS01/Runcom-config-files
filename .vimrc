execute pathogen#infect()

" file detection
filetype on
" syntax highlighting
syntax on

let g:rustfmt_autosave = 1

" auto indent
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set nu

" o
function! BlankUp(count) abort
  put!=repeat(nr2char(10), a:count)
  ']+1
  silent! call repeat#set("\<Plug>unimpairedBlankUp", a:count)
endfunction

" O
function! BlankDown(count) abort
  put =repeat(nr2char(10), a:count)
  '[-1
  silent! call repeat#set("\<Plug>unimpairedBlankDown", a:count)
endfunction

nnoremap <Plug>unimpairedBlankUp :call BlankUp(v:count1)<CR>
nnoremap <Plug>unimpairedBlankDown :call BlankDown(v:count1)<CR>

" toggle Tagbar
nnoremap <silent> <F8> :TagbarToggle<CR>

" open Tagbar in Rust files
autocmd FileType rust TagbarOpen
