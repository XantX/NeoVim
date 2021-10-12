lua require 'nvim-tree'.setup{}
"Se tiene que ver como hacer el toogle para que al cerrar al tree que
"modifique el bar a la vez
command! CustomTreeOpen lua require("custom.tree").open()
command! CustomTreeClose lua require("custom.tree").close()
command! CustomTreeToggle lua require("custom.tree").toggle()
let g:nvim_tree_quit_on_open = 1
