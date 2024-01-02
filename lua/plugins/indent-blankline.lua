return {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPost", "BufNewFile" },
    version = "2.*",
    opts = {
        char = "▏",
        filetype_exclude = {
            "help",
            "alpha",
            "dashboard",
            "neo-tree",
            "Trouble",
            "lazy",
            "mason",
            "notify",
            "toggleterm",
            "lazyterm",
        },
        show_trailing_blankline_indent = false,
        show_current_context = false,
    },
}
