" pathogen
filetype off
execute pathogen#infect()

" enable line numbers in left hand column
set number

" enable line and column numbers in lower right corner
set ruler

" search options
set incsearch " searching as you type, no need to press enter
set hlsearch " highlight search string
set ignorecase " case-insensitive
set smartcase " case-insensitive if search characters are lowercase
nmap \q :nohlsearch<CR> " \q to get rid of search match highlighting

" \p to toggle paste mode (pasting from external applications without extra tabs inserted)"
nmap \p :set paste!<CR> 

" backspace is indent-aware, end-of-line aware, and will delete past where you entered insert mode
set backspace=indent,eol,start 

" misc. rebindings
" let mapleader = "\<space>" " set space, rather than \, to leader key - not sure how I feel about this, may remove
nmap <C-e> :e#<CR> " set Ctrl-E to move to last buffer
nmap <C-n> :bnext<CR> " set Ctrl-N to move to next buffer
nmap <C-p> :bprev<CR> " set Ctrl-P to move to previous buffer
nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR> " toggle line wrapping

" syntax highlighting
syntax on

" tab config
set expandtab

" enable filetype detection, plugin use, and indentaiton settings
filetype plugin indent on

" set the colorscheme to solarized
colorscheme solarized

" needed for lightline
set laststatus=2 " TODO explain
set noshowmode " TODO explain
let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ }

" toggle syntax highlighting in ALE on/off
nmap \s :ALEToggle<CR>
