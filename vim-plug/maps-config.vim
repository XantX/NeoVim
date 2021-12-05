"Remapeo
"Atajos
let mapleader = " "
"Guargar y cerrar
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
"split vertical
nmap <Leader>vs :vsp <CR>
nmap <Leader>F :Telescope fd <CR>
nmap <Leader>R :Telescope live_grep <CR>
"Apertura de configuración
nmap <Leader>rc :e ~/AppData/Local/nvim/init.vim <CR>
"open config windows terminal
nmap <Leader>ra :e ~/AppData/Roaming/alacritty/alacritty.yml<CR>
"open ohmyposh config
nmap <Leader>oh :e ~/AppData/Local/nvim/alacrityConfig/.oh-my-posh.omp.json<CR>
"Nerdtree
nmap <Leader>nt :NvimTreeToggle<CR>
"movimiento entre buffers
nmap <Leader>ne :BufferNext<CR>
nmap <Leader>pe :BufferPrevious<CR>
nmap <Leader>mn :BufferMoveNext<CR>
nmap <Leader>mp :BufferMovePrevious<CR>
nmap <Leader>P :BufferPin<CR>
nmap <Leader>B :BufferPick<CR>
nmap <Leader>e :BufferClose<CR>
"terminal
nmap <Leader>t :vsp <CR> :terminal<CR>
"NerdCommenter
nmap <Leader>c <plug>NERDCommenterToggle
vmap <Leader>c <plug>NERDCommenterToggle<cr>gv
" LSP config (the mappings used in the default file don't quite work right)
"nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
"nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
"nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <Leader>a <Plug>(coc-codeaction-selected)
nmap <Leader>cf <Plug>(coc-format)
"Comandos para hacer resize con alt
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>
"Comandos de prettier
"nmap <leader>f :Prettier<CR>
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
