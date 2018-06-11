set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = " "

let g:easytags_suppress_ctags_warning = 1
"tags easytags ctags settings
"use a ctags file specific to the project
set tags=./tags
"don't write to the global ctags file
let g:easytags_dynamic_files = 2
map <Leader>retag :!ctags -R --exclude=.bundle



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

"shift direction to change tabs
noremap <S-l> gt
noremap <S-h> gT

"quit files with leader q
nnoremap  <leader>q :q<cr>

"save files with leader s
nnoremap <leader>S :w<cr>

"apply macros with Q
nnoremap Q @q
vnoremap Q :norm @q<cr>

"movement
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeFind<CR>

"map <leader>w to open a new vsplit and switch to it
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

"get to Ack quickly with leader a
nnoremap <leader>a :Ack

let g:ackprg = 'rg --vimgrep --no-heading'

"trying out ripgrep...use ag instead of ack with ack.vim; -i means case insensitive
if executable('rg')
    let g:ctrlp_user_command = 'rg --files %s'
    let g:ctrlp_use_caching = 0
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_switch_buffer = 'et'
endif

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" My Custom Mappings related to ctrl-p
" copied the idea for this from gary bernhardts vimrc
map <leader>gj :CtrlP app/assets/javascripts<cr>
map <leader>gv :CtrlP app/views<cr>
map <leader>gf :CtrlP spec/factories<cr>
map <leader>gc :CtrlP app/controllers<cr>
map <leader>gm :CtrlP app/models<cr>
map <leader>gh :CtrlPT app/helpers<cr>
map <leader>gl :CtrlP lib<cr>
map <leader>gsc :CtrlP spec/controllers<cr>
map <leader>gsm :CtrlP spec/models<cr>
map <leader>gsf :CtrlP spec/features<cr>


"pbcopy shortcuts to get to system clipboard
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
" use the system clipboard
set clipboard=unnamed

"better instapaste (thanks orenstein!)
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>

"grab into system clipboard
map <leader>y "*y

"ack on the word under the cursor
map <leader>k :Ack <C-R><C-W><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE  thanks bernhardt
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap <expr> %% expand('%:h').'/'
map <leader>e :edit %%
map <leader>v :view %%


"highlight debugging stuff so you don't miss it
au BufEnter *.rb syn match error contained "\<byebug\>"
au BufEnter *.rb syn match error contained "\<binding.pry\>"
au BufEnter *.rb syn match error contained "\<debugger\>"

"update any file you leave--always saved
autocmd BufLeave,FocusLost * silent! update


"movement
nmap j gj
nmap k gk
"move around your splits with ctrl hjkl which b/c capslock is assigned to ctrl
"works well

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


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
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/nerdtree.git'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'pangloss/vim-javascript'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'stefanoverna/vim-i18n.git'
Plugin 'thoughtbot/vim-rspec'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-dispatch'
Plugin 'danro/rename.vim'
Plugin 'vim-scripts/ZoomWin'
Plugin 'scrooloose/syntastic'
Plugin 'kana/vim-fakeclip'
Plugin 'kchmck/vim-coffee-script'

"all this stuff below is for snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'


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
