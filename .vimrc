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
set background=dark

" needed for lightline
set laststatus=2 " TODO explain
set noshowmode " TODO explain
let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ }

" toggle syntax highlighting in ALE on/off
nmap \s :ALEToggle<CR>

" TODO explain
set mouse=a

" bind flake8 checking to \c
autocmd FileType python map <buffer> \c :call Flake8()<CR> 

" TODO do this smarter?
set rtp+=~/.fzf

" "tabbed" editing
set hidden
set wildchar=<Tab> wildmenu wildmode=full

" NERDtree
" TODO explain this.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

" TODO explain this.
" :tab sball

" :au BufAdd,BufNewFile * nested tab sball
"

"=====================================================
""" Grep-vim Settings
"=====================================================
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'
