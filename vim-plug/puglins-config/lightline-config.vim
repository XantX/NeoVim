let g:webdevicons_enable_flagship_statusline = 1

function! MyFiletype()
      return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
      return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineFugitive()
      try
            if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*FugitiveHead')
              let mark = ''  " edit here for cool mark
              let branch = FugitiveHead()
              return branch !=# '' ? mark.' '.branch : ''
            endif
      catch
      endtry
      return ''
endfunction

let g:lightline = {
      \ 'colorscheme': 'apprentice',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch','readonly', 'modified','coc-status'] ],
      \   'right': [ [ 'lineinfo' ],[  'filetype','fileformat'] ]
      \ },
      \ 'component': {
      \   'git-logo-test': ''
      \ },
      \ 'component_function': {
      \ 'gitbranch': 'LightlineFugitive',
      \ 'filetype': 'MyFiletype',
      \ 'fileformat': 'MyFileformat',
      \ 'coc-status': 'coc#status'
      \ },
      \ }
