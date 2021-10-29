"Zona de plugins
call plug#begin('~/AppData/Local/nvim/Plugins')
"Color
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'nvim-treesitter/playground'
Plug 'norcalli/nvim-colorizer.lua'
"Customizations
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
"Status bar
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
"File explorer
Plug 'kyazdani42/nvim-tree.lua'
"Tab line
Plug 'kyazdani42/nvim-web-devicons'
"Tab bar
Plug 'romgrk/barbar.nvim'
"IDE
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Another fuzzy finder
"TODO: Install
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'unblevable/quick-scope'

"Markdown Plugin
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
"Plugin para terminal flotante
Plug 'voldikss/vim-floaterm'
"React and javascript Plugins
Plug 'ianks/vim-tsx'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
"vue
Plug 'storyn26383/vim-vue'
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
