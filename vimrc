" A basic vimrc built from scratch
" Inspired by https://dougblack.io/words/a-good-vimrc.html
" ----------------------------------------------------------------------------------
" ----------------------------------------------------------------------------------
" Colors {{{
syntax enable				" enable syntax processing
colorscheme Tomorrow-Night		" https://github.com/chriskempson/vim-tomorrow-theme
set colorcolumn=80                  " highlights 80 character width
" }}}

" ----------------------------------------------------------------------------------
" Spaces & Tabs {{{
set tabstop=4				" number of visual spaces per TAB
set softtabstop=4			" number of spaces in tab when editing
set expandtab				" tabs are spaces
" }}}

" ----------------------------------------------------------------------------------
" UI Config {{{
set number				" show line numbers
set showcmd				" show command in bottom bar
set cursorline				" highlight current line
set backspace=indent,eol,start

filetype indent on			" load filetype-specific indent files
set wildmenu				" visual autocomplete for command menu
set lazyredraw				" redraw only when we need to
set showmatch				" highlight matching [{()}]

" }}}

" ----------------------------------------------------------------------------------
" Searching {{{
set incsearch				" search as characters are entered
set hlsearch				" highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}

" ----------------------------------------------------------------------------------
" Movement {{{
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]
" }}}

" ----------------------------------------------------------------------------------
" Leader Shortcuts {{{
let mapleader=","			" leader is a comma
" jk is escape
inoremap jk <esc>
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp %MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source %MYVIMRC<CR>

" save session
nnoremap <leader>s :mksession<CR>
