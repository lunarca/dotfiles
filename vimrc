set nocompatible

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f
" your_machines_makefile
NeoBundle 'Shougo/vimproc'

" Bundles from GitHub
" Colors
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'altercation/vim-colors-solarized'

" Fuzzy Searching Files
NeoBundle 'kien/ctrlp.vim'

NeoBundle 'Lokaltog/vim-easymotion'

" Git setup
NeoBundle 'tpope/vim-fugitive'

" Vim-rails
NeoBundle 'tpope/vim-rails'

" NERDTree directory viewer
NeoBundle 'scrooloose/nerdtree'

" Window Manager
"NeoBundle 'spolu/dwm.vim'

" Colors hex values in CSS files
NeoBundle 'ap/vim-css-color'

" Autocloses if->endif, etc...
NeoBundle 'tpope/vim-endwise'

" Allows changing surrounding delimeters
NeoBundle 'tpope/vim-surround'

" Colors parens
NeoBundle 'kien/rainbow_parentheses.vim'

" Automatically closes quotes, parenthesis, brackets, etc.
NeoBundle 'Raimondi/delimitMate'

" looks for todos
NeoBundle 'vim-scripts/TaskList.vim'

" Matching if/endif, not just {} [] ()
NeoBundle 'vim-scripts/matchit.zip'

" Syntastic for syntax checking
"NeoBundle 'scrooloose/syntastic'

"" Syntaxes
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-haml'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mmalecki/vim-node.js'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'nblock/vim-dokuwiki'
"NeoBundle 'klen/python-mode'
NeoBundle 'rodjek/vim-puppet'

" Tab management
NeoBundle 'kien/tabman.vim'

" Alternate between .c and .h files
NeoBundle 'a.vim'

NeoBundle 'bufexplorer.zip'

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

set colorcolumn=81
highlight ColorColumn guibg=#eeeeee

" Make delimitMate work with spaces properly
let b:delimitMate_expand_space = 1
let b:delimitMate_expand_cr = 1

call neobundle#end()

NeoBundleCheck
