lua << EOF
vim.g.db_ui_icons = {
    expanded = {
        db = '▾ ',
        buffers = '▾ ',
        saved_queries = '▾ ',
        schemas = '▾ ',
        schema = '▾ פּ',
        tables = '▾ 藺',
        table = '▾ ',
    },
    collapsed = {
        db = '▸ ',
        buffers = '▸ ',
        saved_queries = '▸ ',
        schemas = '▸ ',
        schema = '▸ פּ',
        tables = '▸ 藺',
        table = '▸ ',
    },
    saved_query = '',
    new_query = '璘',
    tables = '離',
    buffers = '﬘',
    add_connection = '',
    connection_ok = '✓',
    connection_error = '✕',
}
vim.g.db_ui_execute_on_save = 0
EOF
