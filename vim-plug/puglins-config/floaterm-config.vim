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
