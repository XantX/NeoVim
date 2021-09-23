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
syntax on
filetype plugin on
set rnu
set number
set hidden
set mouse=a
set nowrap
set numberwidth=1
set cursorline
set noswapfile
set clipboard=unnamedplus
"set scrolloff=7
set backspace=indent,eol,start
set t_Co=256
set termguicolors
set ruler
set encoding=utf-8
set title
set showmatch
set laststatus=2
set incsearch
set wildmenu
set autoindent
set smartindent
set guioptions=i
set expandtab
set showcmd
set noshowmode
set cmdheight=1
set showtabline=2
set autochdir
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set wildignore+=*/node_modules/*
set formatoptions+=r
set path+=**
"config color
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
set winblend=0
set wildoptions=pum
set pumblend=5
"Color de terminal flotante
:hi FloatermBorder guifg=#CF8F05
"No background
:hi normal guibg=NONE ctermbg=NONE
"colorizar
lua require 'colorizer'.setup()
"Remapeo
"Atajos
let mapleader = " "
"Guargar y cerrar
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
"split vertical
nmap <Leader>vs :vsp <CR>
nmap <Leader>F :FZF <CR>
nmap <Leader>R :Rg <CR>
"Apertura de configuración
nmap <Leader>rc :e ~/AppData/Local/nvim/init.vim <CR>
"open config windows terminal
nmap <Leader>ra :e ~/AppData/Roaming/alacritty/alacritty.yml<CR>
"open ohmyposh config
nmap <Leader>oh :e ~/AppData/Local/nvim/alacrityConfig/.oh-my-posh.omp.json<CR>
"Nerdtree
nmap <Leader>nt :NERDTreeFind<CR>
"movimiento entre buffers
nmap <Leader>ne :bnext<CR>
nmap <Leader>pe :bprev<CR>
nmap <Leader>e :bd<CR>
"terminal
nmap <Leader>t :vsp <CR> :terminal<CR>
"NerdCommenter
nmap <Leader>c <plug>NERDCommenterToggle
vmap <Leader>c <plug>NERDCommenterToggle<cr>gv
"Spell checker
nmap <Leader>a <Plug>(coc-codeaction-selected)
nmap <Leader>cf <Plug>(coc-format)
" GoTo code navigation Coc
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> rn <Plug>(coc-rename)
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
autocmd FileType cs nmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
autocmd FileType cs xmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
"Comandos de prettier
nmap <leader>f :Prettier<CR>
"To map <Esc> to exit terminal-mode:
:tnoremap <Esc> <C-\><C-n>

"Comandos para guardar sesiones
":SLoad       load a session
":SSave[!]    save a session
":SDelete[!]  delete a session
":SClose      close a session
"
"Comandos para usar sorround
" change tags cstt
" delete tags dst
" change marksc cs<mark><to mark>
" delte mark ds<mark>
" new tag ysiwt
