return {
    "Mofiqul/vscode.nvim",
    lazy = true,
    priority = 1000,
    config = function()
        local c = require('vscode.colors').get_colors()
        require('vscode').setup({
            -- Enable transparent background
            transparent = false,
            -- Enable italic comment
            italic_comments = false,
            -- Disable nvim-tree background color
            disable_nvimtree_bg = true,
            -- Override colors (see ./lua/vscode/colors.lua)
            --color_overrides = {
            --    vscLineNumber = '#FFFFFF',
            --},
            -- Override colors (see ./lua/vscode/colors.lua)
            color_overrides = {
                vscTabOutside = c.vscBack,
                vscTabCurrent = c.vscBack,
                vscTabOther = c.vscBack,
                --vscBlueGreen = "#56ddc2",
            },
            -- Override highlight groups (see ./lua/vscode/theme.lua)
            group_overrides = {
                NonText = { fg = c.vscBack },
                Keyword = { fg = c.vscBlue },
                ['@keyword'] = { fg = c.vscBlue },
            }
        })
    end,
}
