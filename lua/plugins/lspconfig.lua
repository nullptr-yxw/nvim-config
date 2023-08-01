return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    enabled = true,
    dependencies = {
        {
            "folke/neoconf.nvim", cmd = "Neoconf", config = true,
        },
        {
            "folke/neodev.nvim", opts = {},
        },
        "neovim/nvim-lspconfig",
    },
    opts = {
        -- add any global capabilities here
        capabilities = {},
        -- Automatically format on save
        autoformat = true,
        -- Enable this to show formatters used in a notification
        -- Useful for debugging formatter issues
        format_notify = false,
        -- options for vim.lsp.buf.format
        -- `bufnr` and `filter` is handled by the LazyVim formatter,
        -- but can be also overridden when specified
        format = {
            formatting_options = nil,
            timeout_ms = nil,
        },
    },
    config = function()
        require("lsp/setup")
        vim.diagnostic.config({
            underline = false,
            update_in_insert = false,
            virtual_text = {
                spacing = 4,
                source = "if_many",
                prefix = "●",
                -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
                -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
                -- prefix = "icons",
            },
            severity_sort = true,
            signs = false,
        })
    end,
}
