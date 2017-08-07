set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = " "

"get out of insert mode with a super seldom used character sequence
inoremap jj <ESC>

"scrolling speed
set ttyfast
set ttyscroll=3
set lazyredraw

set backspace=2
"no backups since we are always in git (almost)
set nobackup
set nowritebackup
set noswapfile

"tabs
map <C-t> <esc>:tabnew<CR>

"indentation matters...
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2

set history=500

"syntax highlighting
syntax on 
filetype off
filetype plugin on

set number
set nocompatible
set showmatch
set ruler "show cursor position all the time
set showcmd "display incomplete commands
set autowrite " hopefully this will save buffers when I switch out of them
set laststatus=2 " always show status line
set smarttab
set noincsearch
set incsearch
set guioptions-=m       " Can't remember :)
set guioptions-=T       " No toolbars
set guioptions-=r       " No scrollbars
set visualbell t_vb=    " Don't beep
set hidden              " Don't prompt to save when switching buffers


"Display extra whitespace
set list listchars=tab:»·,trail:·

" Switch between the last two files
nnoremap <leader><leader> <c-^>


set cursorline

"status line highlight
highlight StatusLine ctermfg=blue ctermbg=yellow

""rounds to the nearest indent point 
set shiftround

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

"make a little 5 line padding at top and bottom when scrolling
set scrolloff=5





" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
