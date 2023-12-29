return {
    "folke/edgy.nvim",
    event = "VeryLazy",
    enabled = false,
    opts = {
        wo = {
            winbar = false,
            winfixwidth = true,
            winfixheight = false,
            winhighlight = "WinBar:Normal,Normal:Normal",
            spell = false,
            signcolumn = "no",
        },
        options = {
            left = { size = 30 },
            bottom = { size = 15 },
            right = { size = 30 },
            top = { size = 15 },
        },
        bottom = {
            {
                ft = "toggleterm",
                -- exclude floating windows
                filter = function(buf, win)
                    return vim.api.nvim_win_get_config(win).relative == ""
                end,
            },
            "Trouble",
        },
        left = {
            {
                ft = "NvimTree",
            },
        },
    },
}
