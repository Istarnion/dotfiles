set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround'
Bundle 'jiangmiao/auto-pairs'
Bundle 'flazz/vim-colorschemes'
Bundle 'Valloric/YouCompleteMe'
Bundle 'lilydjwg/colorizer'
Plugin 'Yggdroot/indentLine'

" Custom setting for YouCompleteMe
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-d> :nohl<CR><C-l>
 
" indent automaticly depending on filetype
filetype plugin indent on
set autoindent
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let mapleader = ","
let g:mapleader = ","

" enable line numbers
set number

" set syntax highlighting
syntax on

" Set to automaticly read file again if edited elsewhere
set autoread

set wildignorecase
set ignorecase
set smartcase

" Smart way to split windows
nmap <silent> <C-A-j> :vsplit<CR>
nmap <silent> <C-A-i> :split<CR>
nmap <silent> <C-A-l> :vsplit<CR> :wincmd l<CR>
nmap <silent> <C-A-k> :botright split<CR> :wincmd j<CR>

" Smart way to move between windows
map <C-k> <C-W>j
map <C-i> <C-W>k
map <C-j> <C-W>h
map <C-l> <C-W>l

" Hide window
map <A-0> :hide<CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="A-o"

let g:UltiSnipsJumpForwardTrigger="<c-o>"
let g:UltiSnipsJumpBackwardTrigger="<c-u>"

" colorscheme
colors asu1dark
set background=dark
highlight Pmenu     ctermfg=15  ctermbg=0 guifg=#ffffff guibg=#000000
highlight PmenuSel  ctermfg=226 ctermbg=0 guifg=#ffff00 guibg=#000000

" Remap keys (!)
let kbl="qwerty"
if kbl == "qwerty"
    map i <up>
    map k <down>
    map j <left>

    " EEEEEVIIIILLLL!!!
    imap <A-i> <up>
    imap <A-j> <left>
    imap <A-k> <down>
    imap <A-l> <right>

    noremap h i

    noremap ø o
    noremap Ø O

    noremap o e
    noremap O $
    noremap u b
    noremap U 0
else
	noremap n h
	noremap e j
	noremap i l
	noremap u k

	noremap y e
	noremap l b
endif

noremap z u
noremap h i

cmap w!! w !sudo tee % >/dev/null

imap <c-e> <c-o>A;
