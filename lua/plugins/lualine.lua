return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        options = {
            globalstatus = true,
            disabled_filetypes = {
                statusline = {
                    "dashboard",
                },
            },
        },
        theme = "vscode",
        extensions = {
            "toggleterm",
            "overseer",
            "mason",
            "nvim-tree",
            "quickfix",
            "trouble",
            "lazy",
            "aerial",
        },
    },
}
