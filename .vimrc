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
Plugin 'ycm-core/YouCompleteMe'

"Web
Plugin 'mattn/emmet-vim'

"UI
"Plugin 'morhetz/gruvbox'
Plugin 'NLKNguyen/papercolor-theme'	"light
Plugin 'jacoborus/tender.vim'
Plugin 'nightsense/snow'

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
set background=dark
colorscheme PaperColor

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
       \ 'colorscheme': 'snow_dark',
       \ 'active': {
       \   'left': [ [ 'mode', 'paste' ],
       \             [ 'filename', 'readonly', 'gitbranch', 'modified' ] ],
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
let NERDTreeMouseMode = 2

"Emmet
let g:user_emmet_leader_key=','

"YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments= 1
let g:ycm_complete_in_strings = 1


"mapping
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
