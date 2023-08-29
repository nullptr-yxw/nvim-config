return {
    "Mofiqul/vscode.nvim",
    lazy = true,
    priority = 1000,
    config = function()
        local c = require('scheme.colors').get_colors()
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
                vscTabOutside = c.Back,
                vscTabCurrent = c.Back,
                vscTabOther = c.Back,
            },
            -- Override highlight groups (see ./lua/vscode/theme.lua)
            group_overrides = {
                NonText = { fg = c.Back },
                Keyword = { fg = c.Blue },
                ['@keyword'] = { fg = c.Blue },
                NvimTreeNormal = { fg = c.Yellow },
                NvimTreeFolderName = { fg = c.LightBlue },
                NvimTreeOpenedFolderName = { link = "NvimTreeFolderName" },
                NvimTreeRootFolder = { fg = nil },
            }
        })
    end,
}
