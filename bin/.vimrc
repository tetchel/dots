" Essentials
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set nu
syntax on
set clipboard+=unnamed

" Mostly stolen from https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

set autoindent
set smartindent
set autoread
set wildmenu
set hid
set ignorecase      " when searching
set hlsearch
" set incsearch
set lazyredraw      " wait for macro to execute before redraw
set magic           " regex
set showmatch       " show matching brackets
set noerrorbells
set novisualbell

" Colors
try
    colorscheme desert
catch
endtry

try
    set t_Co=256
catch
endtry

set background=dark

set encoding=utf8
set ffs=unix,dos,mac
set noswapfile

" Saves edit location between file opens/closes
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
" autocmd BufWrite * :call DeleteTrailingWS()

" GVIM settings
if has("gui_running")
    set go -=m
    set go -=T
    set go -=e
endif

" Mappings
inoremap jk         <Esc>
inoremap kj         <Esc>
inoremap Esc        <NOP>
" Move lines up and down
nnoremap J          ddp
nnoremap K          ddkkp

noremap <Up>        <NOP>
noremap <Down>      <NOP>
noremap <Left>      <NOP>
noremap <Right>     <NOP>
" oo to newline from normal mode
nnoremap oo         o<Esc>
" Insert spaces in normal mode
nnoremap <Space>    i<Space><Esc>l
nnoremap <Tab>      i<Tab><Esc>l
" CTRL+Backspace delets a word
inoremap <C-BS>     <C-W>
inoremap <C-DEL>    <C-W>
set backspace=indent,eol,start
" noh
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

" rebind movement keys to better fit home row
noremap l h
noremap ; l
noremap h ;

" 'normal' copy-paste shortcuts for v, i modes
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-V> <C-r><C-o>+

" Pressing # searches for current selection in vmode
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>

command RemoveAnsi %s/\%d27[[0-9;]\+[mK]//g
