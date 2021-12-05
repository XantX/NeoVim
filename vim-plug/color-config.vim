set termguicolors
"config color
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
"Color de los códigos HEX
lua require 'colorizer'.setup()

"Configurarion de treesitter
"lua require 'nvim-treesitter.install'.compilers = { "gcc" }
lua require 'nvim-treesitter.configs'.setup {highlight = {enable = true, disable = {"vim","vue"}}}

"Color de terminal flotante
:hi FloatermBorder guifg=#CF8F05

"No background
:hi normal guibg=NONE ctermbg=NONE

"no background on sign colunm
:hi SignColumn guibg=none

"no background on number column
:hi CursorLineNr guibg=none
"Colores de los signos de signify
:hi SignifySignAdd ctermfg=108 ctermbg=237 guifg=#8ec07c guibg=none
:hi SignifySignChange guibg=none guifg=#CF8F05
:hi SignifySignDelete guibg=none guifg=Red
