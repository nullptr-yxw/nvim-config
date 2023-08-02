return {
    'romgrk/barbar.nvim',
    enabled = false,
    lazy = false,
    dependencies = {
        'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    opts = {
        sidebar_filetypes = {
            NvimTree = { text = 'File explorer' },
        },
        icons = {
            separator = {
                left = '',
                right = '',
            },
            separator_at_end = false,
        },
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released

