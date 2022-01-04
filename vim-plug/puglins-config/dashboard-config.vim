let g:dashboard_default_executive ='telescope'
let g:dashboard_custom_header =[ 
            \' █████ █████                       █████    █████ █████',
            \'░░███ ░░███                       ░░███    ░░███ ░░███ ',
            \'░░███ ███    ██████   ████████   ███████   ░░███ ███  ',
            \'  ░░█████    ░░░░░███ ░░███░░███ ░░░███░     ░░█████   ',
            \'   ███░███    ███████  ░███ ░███   ░███       ███░███  ',
            \'  ███ ░░███  ███░░███  ░███ ░███   ░███ ███  ███ ░░███ ',
            \' █████ █████░░████████ ████ █████  ░░█████  █████ █████',
            \'░░░░░ ░░░░░  ░░░░░░░░ ░░░░ ░░░░░    ░░░░░  ░░░░░ ░░░░░ ',]
let g:dashboard_custom_section={
  \ 'a': {
      \ 'description': [' New File                 space cn'],
      \ 'command': 'DashboardNewFile' },
  \ 'b': {
      \ 'description': [' Find File                space ff'],
      \ 'command': 'Telescope find_files' },
  \ 'c': {
      \ 'description': ['ﭯ Recent Files             space fh'],
      \ 'command': 'Telescope oldfiles' },
  \ 'd': {
      \ 'description': [' File Browser             space nt'],
      \ 'command': 'NvimTreeOpen' },
  \ 'e': {
      \ 'description': [' Config                   space rc'],
      \ 'command': 'edit ~/AppData/Local/nvim/init.vim' },
  \ }

            "\' █████ █████                       █████    █████ █████',
            "\'░░███ ░░███                       ░░███    ░░███ ░░███ ',
            "\'░░███ ███    ██████   ████████   ███████   ░░███ ███  ',
            "\'  ░░█████    ░░░░░███ ░░███░░███ ░░░███░     ░░█████   ',
            "\'   ███░███    ███████  ░███ ░███   ░███       ███░███  ',
            "\'  ███ ░░███  ███░░███  ░███ ░███   ░███ ███  ███ ░░███ ',
            "\' █████ █████░░████████ ████ █████  ░░█████  █████ █████',
            "\'░░░░░ ░░░░░  ░░░░░░░░ ░░░░ ░░░░░    ░░░░░  ░░░░░ ░░░░░ ',
