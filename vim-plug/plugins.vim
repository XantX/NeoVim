"Zona de plugins
call plug#begin('~/AppData/Local/nvim/Plugins')
"Color
Plug 'morhetz/gruvbox'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
"Plug 'nvim-treesitter/playground'
Plug 'norcalli/nvim-colorizer.lua'
"Customizations
Plug 'ryanoasis/vim-devicons'
Plug 'glepnir/dashboard-nvim'
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
Plug 'honza/vim-snippets'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
endif
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
"" For ultisnips users.
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
"Plug 'Neevash/awesome-flutter-snippets'

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
if has('nvim')
  function! UpdateRemotePlugins(...)
    " Needed to refresh runtime files
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction
  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'gelguy/wilder.nvim'
endif
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
"Flutter config
"Plug 'akinsho/flutter-tools.nvim'
"Plug 'dart-lang/dart-vim-plugin'
"Plug 'thosakwe/vim-flutter'
"Go
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Rust
"Plug 'simrat39/rust-tools.nvim'
"Plug 'mfussenegger/nvim-dap'
"Bases de datos
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'tpope/vim-dadbod'
call plug#end()
