source $HOME/AppData/Local/nvim/vim-plug/plugins.vim
source $HOME/AppData/Local/nvim/vim-plug/plug-config.vim
syntax enable
set rnu
set mouse=a
set cursorline
set noswapfile
set clipboard=unnamed
set scrolloff=7
set backspace=indent,eol,start
set t_Co=256
set termguicolors  
set ruler
set encoding=utf-8
set showmatch
set laststatus=2
set incsearch
set wildmenu
set autoindent
set smartindent 
set guioptions=i
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set showcmd
"config color
colorscheme gruvbox
let g:grubox_contrast_dark = "hard"
"config Nerdtree
let NERDTreeQuitOnOpen=1
let g:airline#extensions#vimtex#enabled = 1
let g:airline#extensions#vimtex#left = "{"
let g:airline#extensions#vimtex#right = "}"
"Atajos
let mapleader = " "
"Guargar y cerrar
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
"split vertical
nmap <Leader>vs :vsp <CR>
"Apertura de configuracion
nmap <Leader>rc :e ~/AppData/Local/nvim/init.vim <CR>
"Nerdtree
nmap <Leader>nt :NERDTreeFind<CR>
"movimiento entre buffers
nmap <Leader>ne :bnext<CR>
nmap <Leader>e :bd<CR>
"Atajos de git
nmap <Leader>gs :G<CR>
nmap <Leader>gc :Gcommit<CR>
"terminal
nmap <Leader>t :terminal<CR>
"NerdCommenter
nmap <leader>c <plug>NERDCommenterToggle
vmap <leader>c <plug>NERDCommenterToggle<cr>gv
"Spell checker
nmap <leader>a <Plug>(coc-codeaction-selected)
" GoTo code navigation Coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
