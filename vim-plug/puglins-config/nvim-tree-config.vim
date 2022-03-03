lua << EOF
require 'nvim-tree'.setup {
  actions = { 
    open_file = {
      quit_on_open = true,
      },
    }
  }
EOF

"Se tiene que ver como hacer el toogle para que al cerrar al tree que
"modifique el bar a la vez
command! CustomTreeOpen lua require("custom.tree").open()
command! CustomTreeClose lua require("custom.tree").close()
command! CustomTreeToggle lua require("custom.tree").toggle()

let g:nvim_tree_group_empty = 1
let g:nvim_tree_respect_buf_cwd = 1
let g:nvim_tree_highlight_opened_files = 1 
