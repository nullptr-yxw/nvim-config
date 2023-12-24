return {
    "Mofiqul/vscode.nvim",
    lazy = true,
    priority = 1000,
    config = function()
        local c = require('theme.colors').get_colors()
        require('vscode').setup({
            -- Enable transparent background
            transparent = false,
            -- Enable italic comment
            italic_comments = false,
            -- Disable nvim-tree background color
            disable_nvimtree_bg = true,
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
