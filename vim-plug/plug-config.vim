"Configuraciones de airline

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='default'
let g:airline_theme='base16'
let g:Powerline_symbols = "fancy"
let g:Powerline_dividers_override = ["\Ue0b0","\Ue0b1","\Ue0b2","\Ue0b3"]
let g:Powerline_symbols_override = {'BRANCH': "\Ue0a0", 'LINE': "\Ue0a1", 'RO': "\Ue0a2"}
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.linenr = ''

let g:airline#extensions#zoomwintab#enabled = 1
if (has("termguicolors"))
	set termguicolors
endif
"Secciones de airline

"colorizar
lua require 'colorizer'.setup()
"Configuracion de markdown
"let g:markdown_fenced_lenguages = [
	"\'vim'
	"\'help'
	"\]
let g:mkdp_auto_start = 1
"let g:mkdp_open_to_the_world = 1
let g:mkdp_browser = 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome'

"Config Coc
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion on kite or Coc.
if &filetype == "python" || &filetype == "python"
    inoremap <c-space> <C-x><C-u>
else
    inoremap <silent><expr> <c-space> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

"Prittier confid
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
"Sessiones config
let g:startify_session_dir = '~/AppData/Local/nvim/session'
let g:startify_custom_header = [
            \'   _  __            __ _  __',
            \'  | |/ /___ _____  / /| |/ /',
            \'  |   / __ `/ __ \/ __/   / ',
            \' /   / /_/ / / / / /_/   |  ',
            \'/_/|_\__,_/_/ /_/\__/_/|_|  ',            
            \'----------------------------'
            \]
                                                       
let g:startify_lists = [
          \ { 'type': 'files',     'header': [
          \'   _____ __      ',
          \'  / __(_) /__ ___',
          \' / _// / / -_|_-<',
          \'/_/ /_/_/\__/___/',
          \'---------------------']},
          \ { 'type': 'dir',       'header': [
          \'   ___  _______ ',
          \'  / _ \/  _/ _ \ ',
          \' / // // // , _/ ',
          \'/____/___/_/|_|  ',
          \'------------------',
          \getcwd()] },
          \ { 'type': 'sessions',  'header': [
          \'   _____                _',                 
          \'  / ___/___  __________(_)___  ____  _____',
          \'  \__ \/ _ \/ ___/ ___/ / __ \/ __ \/ ___/',
          \' ___/ /  __(__  |__  ) / /_/ / / / (__  )',
          \'/____/\___/____/____/_/\____/_/ /_/____/',
          \'----------------------------------------'
          \]},
          \ { 'type': 'bookmarks', 'header': [
          \'    ____              __                        __',       
          \'   / __ )____  ____  / /______ ___  ____ ______/ /_______',
          \'  / __  / __ \/ __ \/ //_/ __ `__ \/ __ `/ ___/ //_/ ___/',
          \' / /_/ / /_/ / /_/ / ,< / / / / / / /_/ / /  / ,< (__  )', 
          \'/_____/\____/\____/_/|_/_/ /_/ /_/\__,_/_/  /_/|_/____/',                                                         
          \'-------------------------------------------------------'
          \]},
          \ ]
let g:startify_bookmarks = [
            \ { 'r': '~/Desktop/Cosas/Cosas de programacion' },
            \ { 'c': '~/Desktop/Cosas/Cosas de programacion/C++' },
            \ { 'p': '~/Desktop/Cosas/Cosas de programacion/Python' },
            \ { 'd': '~/Desktop/Cosas/Cosas de programacion/Java Pruebas' },
            \ { 'i': '~/AppData/Local/nvim/init.vim' },
            \ { 'g': '~/.gitconfig ' }
            \ ]
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_autoload = 1

            "\' █████ █████                       █████    █████ █████',
            "\'░░███ ░░███                       ░░███    ░░███ ░░███ ',
            "\'░░███ ███    ██████   ████████   ███████   ░░███ ███  ',
            "\'  ░░█████    ░░░░░███ ░░███░░███ ░░░███░     ░░█████   ',
            "\'   ███░███    ███████  ░███ ░███   ░███       ███░███  ',
            "\'  ███ ░░███  ███░░███  ░███ ░███   ░███ ███  ███ ░░███ ',
            "\' █████ █████░░████████ ████ █████  ░░█████  █████ █████',
            "\'░░░░░ ░░░░░  ░░░░░░░░ ░░░░ ░░░░░    ░░░░░  ░░░░░ ░░░░░ ',
            

"Coc
"autocmd FileType python let b:coc_suggest_disable = 1
"autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

"Config de barra de estados
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'Error:'
let airline#extensions#coc#warning_symbol = 'Warning:'
function! AirlineInit()
    "let g:airline_section_c = airline#section#create(['file'])
    let g:airline_section_c = airline#section#create(['file',' ','%{coc#status()}'])
    "let g:airline_section_c = airline#section#create_left(['file'])
    let g:airline_section_b = airline#section#create(['branch',' ','%{battery#component()}'])
    "let g:airline_section_y = airline#section#create([''])
    "let g:airline_section_x = airline#section#create_right(['ffnec','foo'])
    "let g:airline_section_z = airline#section#create_right(['%l','%c'])
endfunction

function! AccentDemo()
  let keys = ['a','b','c','d','e','f','g','h']
  for k in keys
    call airline#parts#define_text(k, k)
  endfor
  call airline#parts#define_accent('a', 'red')
  call airline#parts#define_accent('b', 'green')
  call airline#parts#define_accent('c', 'blue')
  call airline#parts#define_accent('d', 'yellow')
  call airline#parts#define_accent('e', 'orange')
  call airline#parts#define_accent('f', 'purple')
  call airline#parts#define_accent('g', 'bold')
  call airline#parts#define_accent('h', 'italic')
  let g:airline_section_a = airline#section#create(keys)
endfunction

"autocmd VimEnter * call AccentDemo()
autocmd User AirlineAfterInit call AirlineInit()
"Config de terminal flotante
let g:floaterm_title = "TERMINAL: $1/$2"
let g:floaterm_width = 0.7
let g:floaterm_height = 0.7

let g:floaterm_keymap_toggle = '<F6>'
let g:floaterm_keymap_next   = '<F7>'
"let g:floaterm_keymap_new    = '<F8>'
nnoremap <silent> <F8> :FloatermNew powershell<CR>
let g:floaterm_keymap_kill   = '<F9>'
let g:floaterm_gitcommit = 'vsplit'

" Color para nerdttree
"let g:NERDTreeFileExtensionHighlightFullName = 1
"let g:NERDTreeExactMatchHighlightFullName = 1
"let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
