call plug#begin('~/.config/nvim/plugged')

"Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
"Plug 'scrooloose/syntastic'
Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdcommenter'
"Plug 'vim-scripts/indentpython.vim'
Plug 'scrooloose/nerdtree'
"Plug 'tmhedberg/SimpylFold'

call plug#end()

" show absolute line number
" set number
" set numberwidth=3

" specify area to split, ie when using :vs and :sp
set splitbelow
set splitright

" turn hybrid line numbers on
set number relativenumber
set nu rnu

" set airline theme
"let g:airline_powerline_fonts = 1
"let g:airline_theme='minimalist'

""" Changing color of vim syntastic error window:
"hi QuickFixLine ctermbg = 27

:colorscheme peachpuff
:let mapleader = ","

hi MatchParen cterm=none ctermbg=black ctermfg=white

:set clipboard=unnamedplus

" Enable folding
set foldmethod=indent
"set foldlevel=99

" map space to za/zf for folding purpose
nnoremap <space> za
vnoremap <space> zf

" UTF-8 Support
set encoding=utf-8

" Auto-Complete
" auto-complete window goes away when you’re done with it
" the second defines a shortcut for goto definition
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" File Browsing / hide .pyc files
"let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
"autocmd vimenter * NERDTree

" access system clipboard
set clipboard=unnamed

let g:ale_linters = {
  \ 'python': ["pyflakes", "pylint"] ,
  \ }
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '>'

"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1
"let NERDTreeQuitOnOpen = 1
"let NERDTreeAutoDeleteBuffer = 1

"" Open a NerdTree if no file is given as CLI argument
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"" Close if the only remaining window is a nerdtree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"au VimEnter * NERDTree
"nmap :NERDTreeToggle <Enter>
"nmap <Leader>f :NERDTreeToggle<Enter>
"nnoremap <silent> <Leader>v :NERDTreeFind<CR>

"autocmd BufReadPre,FileReadPre * :NERDTreeClose

