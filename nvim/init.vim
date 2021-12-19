" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

call plug#begin('~/.vim/plugged')

" Colores y estilo
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
" Pantalla de inicio
Plug 'mhinz/vim-startify'
" Intellisense like.. 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
" Edicion
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
" Vim sugar for the UNIX shell commands
Plug 'tpope/vim-eunuch'
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Dart & Flutter
Plug 'dart-lang/dart-vim-plugin'
" Go lang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

let loaded_netrwPlugin=1
filetype plugin on

set number
set relativenumber
set numberwidth=1


let mapleader = " "
set showcmd
set showmatch

set clipboard=unnamed  "Comparte clipboard con OS

" Configuración de indentación
set smarttab
set cindent
set tabstop=4
set shiftwidth=4
set expandtab

" Color Theme
syntax on
colorscheme gruvbox
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme="base16_gruvbox_dark_hard"

" Mappings
" nnoremap <silent> <Leader>t :NERDTreeToggle<CR>
nnoremap <silent> <leader>g :Rg<CR>
nnoremap <silent> <leader>t :Tags<CR>
nnoremap <silent> <leader>m :Marks<CR>
nnoremap <silent> <Leader>o :Files<CR>
nnoremap <silent> <Leader>O :Files!<CR>
nnoremap <silent> <Leader>; :Commands<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>x :bd<CR>
nnoremap <silent> <Leader>. :bn<CR>
nnoremap <silent> <Leader><tab> <c-w><c-w>
nnoremap <silent> <Leader>l :call LanguageClient_contextMenu()<CR>

map <silent> <c-j> 5jzz
map <silent> <c-k> 5kzz
map <silent> <c-h> 10jzz
map <silent> <c-l> 10kzz

map <silent> <C-t><up> :tabr<cr>
map <silent> <C-t><down> :tabl<cr>
map <silent> <C-t><left> :tabp<cr>
map <silent> <C-t><right> :tabn<cr>
map <silent> <C-t>x :tabc<cr>

" mapeo de teclas para resize de ventanas
nnoremap <silent> <Leader>+ :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" NerdCommenter - Comment functions so powerful...
vmap == <plug>NERDCommenterToggle


" mapeo de multi cursor
"let g:VM_maps = {}
"let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
"let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n
"let g:VM_maps["Select Cursor Down"] = '<S-C-Down>'      " start selecting down
"let g:VM_maps["Select Cursor Up"]   = '<S-C-Up>'        " start selecting up
"let g:VM_maps["Add Cursor Down"]    = '<M-Down>'
"let g:VM_maps["Add Cursor Up"]      = '<M-Up>'

" Configs de plugins
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim

" coc-explorer
nmap <space>e :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
