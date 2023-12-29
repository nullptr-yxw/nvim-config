return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "famiu/bufdelete.nvim",
    },
    config = function()
        local bufferline = require("bufferline")
        local c = require("theme.colors").get_colors()
        require("bufferline").setup({
            options = {
                themable = false,
                style_preset = {
                    bufferline.style_preset.minimal,
                    bufferline.style_preset.no_italic,
                },
                middle_mouse_command = "Bdelete! %d",
                close_command = "Bdelete! %d",
                right_mouse_command = "vert sbuffer %d",
                diagnostics = "false",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left",
                        separator = true,
                    },
                },
                indicator = {
                    style = "none",
                },
                show_close_icon = true,
                always_show_bufferline = true,
                tab_size = 15,
                max_name_length = 20,
            },
            highlights = {
                buffer_selected = {
                    fg = c.MintCream,
                    bold = false,
                },
                buffer_visible = {
                    fg = c.DoderBlue,
                    bold = false,
                },
                background = {
                    fg = c.DoderBlue,
                },
            },
        })
    end,
}
