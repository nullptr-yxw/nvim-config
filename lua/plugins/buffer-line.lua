return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    enabled = true,
    config = function()
        local bufferline = require("bufferline")
        require("bufferline").setup({
            options = {
                themable = false,
                style_preset = {
                    bufferline.style_preset.minimal,
                    bufferline.style_preset.no_italic,
                },
                middle_mouse_command = "bdelete! %d",
                diagnostics = "false",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left",
                        separator = true,
                    },
                    {
                        filetype = "neo-tree",
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
                tab_size = 14,
                separator_style = "thin",
            },
            highlights = {
                buffer_selected = {
                    fg = "#F8F8FF",
                },
            },
        })
    end,
}
