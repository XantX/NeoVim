lua << EOF
  require("flutter-tools").setup{
    lsp = {
      capabilities = capabilitiesCMP
      }
  } -- use defaults
EOF
