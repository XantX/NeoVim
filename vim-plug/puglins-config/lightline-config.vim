let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch','readonly', 'modified','coc-status'] ],
      \   'right': [ [ 'lineinfo' ],[  'filetype','fileencoding'] ]
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B'
      \ },
      \ 'component_function': {
      \ 'gitbranch': 'FugitiveHead',
      \ 'coc-status': 'coc#status'
      \ },
      \ }
