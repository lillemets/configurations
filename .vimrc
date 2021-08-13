""" PLUGINS

call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
call plug#end()

"""  GENERAL

" Sets how many lines of history VIM has to remember
set history=1000

" Set to auto read when a file is changed from the outside
set autoread

" Yank to global clipboard
set clipboard=unnamedplus


"""  MAPPINGS

let mapleader = "'"

"" Save
nmap <leader>w :w<cr>

"" Save with sudo
nmap <leader>W :w !sudo tee %<cr>

"" Quit
nmap <leader>q :q<cr>
"" Force quit
nmap <leader>Q :q!<cr>

"" Toggle line numbers
nmap <leader>n :set invnumber<cr>

"" Remove highlighting
nmap <leader>h :let @/ = ""<cr>

"" Explore
nmap <leader>e :Explore<cr>

"" Splits
nmap <leader>z :split<cr>
nmap <leader>x :vsplit<cr>
nmap <leader>t <C-w>w
"nmap <C-h> <C-w>h
"nmap <C-j> <C-w>j
"nmap <C-k> <C-w>k
"nmap <C-l> <C-w>l

" Goyo
nmap <leader>f :Goyo <bar> highlight StatusLineNC ctermfg=white <cr>


"" OUTPUT RENDERING

"" Pandoc
nmap <leader>P :w <bar> :!pandoc %:p --filter pandoc-citeproc -o %:p:r.pdf<cr><cr>

"" Rmarkdown
nmap <leader>R :w <bar> :!Rscript -e 'rmarkdown::render("%:p")'<cr><cr>

"" Graphviz
nmap <leader>G :w <bar> :!dot -Tpng %:p -o %:p:r.png<cr><cr>

"" Decktape
nmap <leader>D :w <bar> :!decktape --chrome-arg=--disable-web-security remark %:p %:p:r.pdf<cr><cr>


""" INTERFACE

" Colorscheme
colorscheme default

" Use terminal colors
set t_Co=16

" Enable syntax highlighting
syntax enable 

" Set wrapping at spaces
set linebreak

" Show matching brackets when text indicator is over them
set showmatch 

" No annoying sound on errors
set noerrorbells
set novisualbell

"" Goyo
let g:goyo_width='100'
let g:goyo_height='90%'
let g:goyo_linenr='10'


""" SEARCH

"" Ignore case when searching
set ignorecase

"" When searching try to be smart about cases 
set smartcase

"" Highlight search results
set hlsearch


"""  TEXT, TAB, INDENT

"" Use spaces instead of tabs
set expandtab

"" Be smart when using tabs ;)
set smarttab

"" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

set ai "Auto indent
"set si "Smart indent

set wrap "Wrap lines


"""  OTHER

"" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

"" Spellcheking toggle
map <leader>s :setlocal spell!<cr>

"" Natural split opening
set splitbelow
set splitright

"" Statusline
set noruler
"set statusline=%=%F
"hi StatusLine cterm=none
hi StatusLineNC cterm=none ctermbg=none ctermfg=none
hi VertSplit cterm=none ctermbg=none ctermfg=none
