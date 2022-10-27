set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode


call plug#begin('~/.vim/plugged')
"Theme
    Plug 'morhetz/gruvbox'
"IDE:
  Plug 'easymotion/vim-easymotion'
  Plug 'scrooloose/nerdtree'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'mhinz/vim-signify'
  Plug 'yggdroot/indentline'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-surround'
  Plug 'sirver/ultisnips'


	
  "typing
  Plug 'jiangmiao/auto-pairs'
call plug#end()

colorscheme gruvbox
"let g:gruvox_contrast_dark = "hard"
highlight Normal ctermbg=NONE

let NERDTreeQuitOnOpen=1

"tecla lider
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap  <Leader>nt :NERDTreeFind<CR>

"short cuts
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

nnoremap <Leader>< 10<C-w><
nnoremap <Leader>> 10<C-W>>
let g:jedi#auto_initialization = 0

source $HOME/.config/nvim/plug-config/coc.vim

