            "\' █████ █████                       █████    █████ █████',
            "\'░░███ ░░███                       ░░███    ░░███ ░░███ ',
            "\'░░███ ███    ██████   ████████   ███████   ░░███ ███  ',
            "\'  ░░█████    ░░░░░███ ░░███░░███ ░░░███░     ░░█████   ',
            "\'   ███░███    ███████  ░███ ░███   ░███       ███░███  ',
            "\'  ███ ░░███  ███░░███  ░███ ░███   ░███ ███  ███ ░░███ ',
            "\' █████ █████░░████████ ████ █████  ░░█████  █████ █████',
            "\'░░░░░ ░░░░░  ░░░░░░░░ ░░░░ ░░░░░    ░░░░░  ░░░░░ ░░░░░ ',
            "------------------------------------------------------------

source $HOME/AppData/Local/nvim/vim-plug/plugins.vim
source $HOME/AppData/Local/nvim/vim-plug/plug-config.vim
syntax enable
set rnu
set number
set hidden
set mouse=a
set nowrap
set numberwidth=1
set cursorline
set noswapfile
set clipboard=unnamedplus
set scrolloff=7
set backspace=indent,eol,start
set t_Co=256
set termguicolors  
set ruler
set encoding=utf-8
set showmatch
set laststatus=1
set incsearch
set wildmenu
set autoindent
set smartindent 
set guioptions=i
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set showcmd
set noshowmode
set showtabline=2
set autochdir
filetype indent on
"config color
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
"Color de comentarios
:hi Comment ctermfg=245 guifg=#58A2A3
"Color de las etiquetas xml para react
:hi xmlEndTag ctermfg=208 guifg=#fe8019
:hi xmlTag ctermfg=208 guifg=#fe8019
:hi xmlTagName ctermfg=208 guifg=#fe8019
"Color de las etiquetas para html
":hi htmlEndTag ctermfg=208 guifg=#fe8019
":hi htmlTag ctermfg=208 guifg=#fe8019
":hi htmlTagName ctermfg=208 guifg=#fe8019

"Nerdtree Colors
:hi NERDTreeDir ctermfg=208 guifg=#AB90D1
"Color de terminal flotante
:hi FloatermBorder guifg=#CF8F05
"config Nerdtree
let NERDTreeQuitOnOpen=1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
"Remapeo

"Atajos
let mapleader = " "
"Guargar y cerrar
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
"split vertical
nmap <Leader>vs :vsp <CR>
"Apertura de configuracion
nmap <Leader>rc :e ~/AppData/Local/nvim/init.vim <CR>
"open config windows terminal
nmap <Leader>rt :e ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json<CR>
"Nerdtree
nmap <Leader>nt :NERDTreeFind<CR>
"movimiento entre buffers
nmap <Leader>ne :bnext<CR>
nmap <Leader>pe :bprev<CR>
nmap <Leader>e :bd<CR>
"Atajos de git
nmap <Leader>gs :G<CR>
nmap <Leader>gc :Gcommit<CR>
"terminal
nmap <Leader>t :vsp <CR> :terminal<CR>
"NerdCommenter
nmap <Leader>c <plug>NERDCommenterToggle
vmap <Leader>c <plug>NERDCommenterToggle<cr>gv
"Spell checker
nmap <Leader>a <Plug>(coc-codeaction-selected)
"create carpeta windows
nmap <Leader>md :!mkdir  
nmap <Leader>mf :!touch 
" GoTo code navigation Coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"comandos para pasar de espacio de escritura en snippets

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
"Comandos para hacer resize con alt
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>
"Comandos de prettier
nmap <leader>f :Prettier<CR> 

"To map <Esc> to exit terminal-mode:
:tnoremap <Esc> <C-\><C-n>

"Comandos para guardar sessiones
":SLoad       load a session
":SSave[!]    save a session
":SDelete[!]  delete a session
":SClose      close a session
