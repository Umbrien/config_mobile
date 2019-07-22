set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'

"Web
Plugin 'mattn/emmet-vim'

"UI
Plugin 'morhetz/gruvbox'
Plugin 'NLKNguyen/papercolor-theme'	"light
Plugin 'jacoborus/tender.vim'
Plugin 'itchyny/lightline.vim'

call vundle#end()
filetype plugin indent on



set incsearch
set hlsearch
set showmatch
set lazyredraw


""""""""""""
"UI
""""""""""""
set number
syntax on
set cursorline
colorscheme tender
set background=dark

set updatetime=100
set tabstop=1


""""""""""""
"Plugins
""""""""""""

"lighline
 set laststatus=2
 set noshowmode
	"theme seoul256
 let g:lightline = {
       \ 'colorscheme': 'tender',
       \ 'active': {
       \   'left': [ [ 'mode', 'paste' ],
       \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
       \   'right': [ [ 'lineinfo' ],
       \              [ 'percent' ],
       \              [ 'filetype'] ]
       \ },
       \ 'component_function': {
       \   'gitbranch': 'fugitive#head'
       \ },
       \ }

"NERD Tree
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1

"Emmet
let g:user_emmet_leader_key=','

"mapping
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
