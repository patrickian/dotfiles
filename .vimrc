" ## GENERAL SETTINGS
execute pathogen#infect()
syntax on
filetype plugin indent on
set showmode
set number
set linebreak
set showbreak=+++
set showmatch
set visualbell
set hlsearch
set smartcase
set mouse=a
set ignorecase
set incsearch
set autoindent
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set ruler
set undolevels=1000
set backspace=indent,eol,start
set cursorline
set colorcolumn=80
" hi ColorColumn ctermbg=lightcyan guibg=lightcyan
set listchars=tab:——,trail:·,extends:>,precedes:<,nbsp:%
set list

" ## END GENERAL SETTINGS


" Auto-reload of .vimrc
autocmd! bufwritepost ~/.vimrc source %

" Always switch to the current file's directory
autocmd BufEnter * silent! lcd %:p:h
" ##### END UTILITY SETTINGS


" ##### POWERLINE FONTS SETTINGS
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
set encoding=utf-8

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
" ##### END POWERLINE FONTS SETTINGS
