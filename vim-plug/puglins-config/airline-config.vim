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

"Config de barra de estados
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'Error:'
let airline#extensions#coc#warning_symbol = 'Warning:'

function! AirlineInit()
  "let g:airline_section_c = airline#section#create(['file'])
  let g:airline_section_b = airline#section#create(['branch'])
  let g:airline_section_c = airline#section#create(['file',' ','%{coc#status()}'])
  "let g:airline_section_c = airline#section#create_left(['file'])
  "let g:airline_section_y = airline#section#create(['%{strftime("%H:%M:%S")}'])
  let g:airline_section_y = airline#section#create(['%{strftime("%c")}'])
  let g:airline_section_z = airline#section#create_right([])
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
