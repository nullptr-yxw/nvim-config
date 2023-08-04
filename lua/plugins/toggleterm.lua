return {
    'akinsho/toggleterm.nvim',
    Lazy = true,
    opts = {
        shade_terminals = false,
        persist_size = false,
        win_bar = {
            enable = true,
            name_formatter = function(term)
                return term.name
            end,
        },
        start_in_insert = false,
    },
}
