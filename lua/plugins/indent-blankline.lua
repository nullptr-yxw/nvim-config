return {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPost", "BufNewFile" },
    main = "ibl",
    opts = {
        indent = {
            char = "▏",
        },
        scope = {
            enabled = false,
        },
        exclude = {
            filetypes = {
                "dashboard",
                "NvimTree",
                "Trouble",
                "lazy",
                "mason",
                "toggleterm",
                "sagaoutline",
                "help",
            },
            buftypes = {
            },
        },
    },
}
