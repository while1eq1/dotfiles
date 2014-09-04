set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Your plugins
Plugin 'while1eq1/vim-monokai-black'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'pangloss/vim-javascript'
Plugin 'kien/ctrlp.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'vadv/vim-chef'
Plugin 'sjl/gundo.vim'
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

set nu
syntax on
set background=dark
set laststatus=2
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set backspace=indent,eol,start

" Fix fonts / symbols for airline
let g:airline_powerline_fonts = 1
let g:rehash256 = 1
map <C-n> :NERDTreeTabsToggle<CR>
let g:airline#extensions#tabline#enabled = 1

colorscheme monokai

" set the cursor to a vertical line in insert mode and a solid block
" " in command mode
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" enable mouse support
:set mouse=a

" ctrl+l / ctrl+h to move between tabs ctrl+j / ctrl+k move between buffers
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

" ctrl+g open gundo
nnoremap <C-G> :GundoToggle<CR>

" Hail to the new leader!
let mapleader = ","

"relative linenumbers
set rnu

" C Family completion
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Command+c / Command+v for copy/paste
map <leader>c "+y<CR>

" Toggle pastemode with ,[,p
set pastetoggle=<leader><Tab>

" space = pagedown, - = pageup
noremap <Space> <PageDown>
noremap - <PageUp>
