filetype plugin on

" For pathogen.vim: auto load all plugins in .vim/bundle
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set tabstop=4
set shiftwidth=4
set autoindent
set smarttab
set expandtab
set hlsearch
set scrolloff=10
set nu
let g:jslint_command = 'jsl'
let g:jslint_command_options = '--nofilelisting --conf "/etc/jsl.conf" --nosummary --nologo'
map <F8> :call JavascriptLint()<cr>
nnoremap <silent><F3> :Grep<cr>
nnoremap <silent><F4> :GrepBuffer<cr>
nnoremap <silent><F9> :ConqueTerm bash<cr>

" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
nnoremap <silent> <C-S> :if expand("%") == ""<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR>

" Conque Parameters
" //Color cause response slow
" let g:ConqueTerm_Color = 1
let g:ConqueTerm_ReadUnfocused = 1

" powerline plugin parameter
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set laststatus=2
set t_Co=256
let g:Powerline_symbols='fancy'

" EasyMotion leader key define
let g:EasyMotion_leader_key=','

" color scheme
if has("gui_running")
    set guifont=DejaVu\ Sans\ Mono\ 9
endif
set cursorline          "highlight current line
set background=dark
colorscheme solarized

" set default filetype as Javascript
au BufEnter,BufNewFile,BufRead * if &ft == '' | set ft=javascript | endif
