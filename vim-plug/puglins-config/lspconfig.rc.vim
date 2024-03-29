lua << EOF
  -- Setup lspconfig.
  local kind_icons = {
      Text = "",
      Method = "m",
      Function = "",
      Constructor = "",
      Field = "",
      Variable = "",
      Class = "",
      Interface = "",
      Module = "",
      Property = "",
      Unit = "",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "",
      Event = "",
      Operator = "",
      TypeParameter = "",
    }
  -- Setup nvim-cmp.
  local cmp = require'cmp'
  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    experimental ={
      ghost_text = true,
      native_menu = false
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    formatting = {
      fields = { "kind", "abbr", "menu" },
      format = function(entry, vim_item)
        vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
      --vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
        vim_item.menu = ({
          nvim_lsp = "[LSP]",
          nvim_lua = "[NVIM_LUA]",
          ultisnips = "[Ultisnips]",
          vsnip = "[Vsnip]",
          buffer = "[Buffer]",
          path = "[Path]",
        })[entry.source.name]
        return vim_item
      end,
    },
    window = {
      documentation = cmp.config.window.bordered(),
    },
    sources = cmp.config.sources({
			{ name = 'ultisnips' },
      { name = 'vsnip' },
      { name = 'nvim_lsp' },
      { name = 'nvim_lua' },
    }, {
      { name = 'buffer' },
      { name = 'path' },
    })
  })

  local capabilitiesCMP = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  local lsp_installer = require("nvim-lsp-installer")

  lsp_installer.on_server_ready(function(server)
    local opts = {
        capabilities = capabilitiesCMP
    }
    server:setup(opts)
    --if server.name == "rust_analizer" then
    --    -- Initialize the LSP via rust-tools instead
    --    require("rust-tools").setup {
    --        server = vim.tbl_deep_extend("force", server:get_default_options(), opts),
    --    }
    --    server:attach_buffers()
    --else
    --  server:setup(opts)
    --end
  end)
  vim.g.db_ui_use_nerd_fonts = 1
  vim.g.db_ui_show_database_icon = 1
  vim.g.db_ui_force_echo_notifications = 1
EOF
