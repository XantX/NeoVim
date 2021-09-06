let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch','readonly', 'modified','coc-status','gitstatus'] ],
      \   'right': [ [ 'lineinfo' ],[  'filetype','fileencoding'] ]
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B'
      \ },
      \ 'component_function': {
      \ 'gitbranch': 'FugitiveHead',
      \ 'gitstatus': 'fugitive#statusline',
      \ 'coc-status': 'coc#status'
      \ },
      \ }
