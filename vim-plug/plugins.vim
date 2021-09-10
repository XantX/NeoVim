"Zona de plugins
call plug#begin('~/AppData/Local/nvim/Plugins')
"Customizations
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'mhinz/vim-startify'
Plug 'lambdalisue/battery.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'
"IDE
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

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

"Bases de datos
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'vim-scripts/dbext.vim'
"Flutter config
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
"Go
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()


