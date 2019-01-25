set nu
set ts=4
set expandtab
set smartindent
set shiftwidth=4
set softtabstop=4
set hls
set scrolloff=10
set foldmethod=syntax
"set nofoldenable

"trick
"nmap <C-h> <C-w><
nmap <C-l> <C-w>>
nmap <C-j> <C-w>+
nmap <C-k> <C-w>-

nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $

nnoremap <C-u> viw~e
inoremap <C-u> <ESC>viw~ea


"for tree
set rtp+=~/.misc_rc/vim/bundle/nerdtree
"for bufexplorer
set rtp+=~/.misc_rc/vim/bundle/bufexplorer.zip
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"for YouCompleteMe
set rtp+=~/.misc_rc/vim/bundle/YouCompleteMe

"using system clipboard
set clipboard^=unnamedplus,unnamed

colo darkblue

" set default filetype as .abc
autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | set filetype=abc | endif
