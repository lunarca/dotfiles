set nocompatible

set t_Co=256
set showmode
set showcmd
set splitbelow
set splitright

syntax on

set hidden

" Use good searching
set ignorecase
set smartindent
set hlsearch
set incsearch
set magic

" Don't clutter
set nobackup
set nowb
set noswapfile

" Do tabs intelligently
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

" Backup, auto save, swap, undo, and view files.
set wildignore+=*~,#*#,*.sw?,%*,*=

" Mac OS X.
set wildignore+=*.DS_Store

" Use Tab on Makefiles
autocmd FileType make setlocal noexpandtab

" Automatically reload vimrc on save
augroup reload_vimrc "{
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

set nu

if has ('mouse')
    set mouse=a
    set mousemodel=popup_setpos
    " Hide mouse while typing.
    set mousehide"
    if &term =~ "xterm" || &term =~ "screen"
        set ttymouse=xterm2
    endif
endif

" Fold opening and closing
nmap <leader>. za
map <leader>. za

set clipboard=unnamed
"
" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" kill all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

let g:html_indent_inctags = "html,body,head,tbody,div"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"" AUTOCOMMANDS
au VimResized * exe "normal! \<c-w>="

" Map Ctrl+Homekeys to move between windows
map <C-j> <C-w>j
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-k> <C-w>k

filetype plugin indent on


autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

