local tree ={}
local view = require 'nvim-tree.view'
local nvim_tree = require 'nvim-tree'

tree.open = function ()
   require'bufferline.state'.set_offset(31, 'FileTree')
   require'nvim-tree'.find_file(true)
end

tree.close = function ()
   require'bufferline.state'.set_offset(0)
   require'nvim-tree'.close()
end

tree.toggle = function ()
   if view.win_open() then
      require'bufferline.state'.set_offset(0)
      view.close()
   else
      require'bufferline.state'.set_offset(31, 'FileTree')
      nvim_tree.open()
   end
end

return tree
