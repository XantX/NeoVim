"Zona de plugins
call plug#begin('~/AppData/Local/nvim/Plugins')
"Customizations
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lambdalisue/battery.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'sheerun/vim-polyglot'
"IDE
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
"Markdown Plugin
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
"Cpp Plugin
Plug 'octol/vim-cpp-enhanced-highlight'
"Plugin para terminal flotante
Plug 'voldikss/vim-floaterm'
"React and javascript Plugins
Plug 'ianks/vim-tsx'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

"C# plugins not found in pc
"Plug 'omnisharp/omnisharp-vim'
"Plug 'nickspoons/vim-sharpenup'

"Bases de datos
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'vim-scripts/dbext.vim'
"Flutter config
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
call plug#end()


