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
syntax on
filetype plugin on
set rnu
set number
set hidden
set mouse=a
set nowrap
set numberwidth=1
set noswapfile
set clipboard=unnamedplus
set backspace=indent,eol,start
set ruler
set encoding=utf-8
set title
set showmatch
set laststatus=2
set incsearch
set wildmenu
"set wildoptions+=pum
set autochdir
set autoindent
set smartindent
set guioptions=i
set expandtab
set showcmd
set noshowmode
set cmdheight=1
set showtabline=2
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set wildignore+=*/node_modules/*
set path+=**
set winblend=0
set wildoptions=pum
set pumblend=5
"Color config
source $HOME/AppData/Local/nvim/vim-plug/color-config.vim
source $HOME/AppData/Local/nvim/vim-plug/plug-config.vim
source $HOME/AppData/Local/nvim/vim-plug/maps-config.vim
