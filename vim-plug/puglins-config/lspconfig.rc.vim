lua << EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'
  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body)
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
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'ultisnips' },
    })
  })
  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig').tsserver.setup {
    capabilities = capabilities
  }
  require('lspconfig').pyright.setup {
    capabilities = capabilities
  }
  require'lspconfig'.bashls.setup{
      capabilities = capabilities
  }
EOF
