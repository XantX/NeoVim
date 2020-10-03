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
"set fileformat=unix
"filetype plugin on
"config color
colorscheme gruvbox
let g:grubox_contrast_dark = "hard"
"config Nerdtree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
"Atajos
let mapleader = " "
"Comandos de busqueda de docs
"Ubicaciones de el programa
let g:zv_zeal_executable = 'C:\Users\SEBASTIAN\Desktop\Cosas\Cosas de programacion\Zeal\zeal.exe'
nmap gzz <Plug>Zeavim
vmap gzz <Plug>ZVVisSelection
nmap <Leader>z <Plug>ZVKeyDocset
nmap gZ <Plug>ZVKeyDocset<CR>
nmap gz <Plug>ZVOperator
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
