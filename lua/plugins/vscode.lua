return {
    "Mofiqul/vscode.nvim",
    cond = true,
    priority = 1000,
    config = function()
        local c = require("theme.colors").get_colors()
        require("vscode").setup({
            -- Enable transparent background
            transparent = false,
            -- Enable italic comment
            italic_comments = false,
            -- Disable nvim-tree background color
            disable_nvimtree_bg = true,
            group_overrides = {
                NonText = { fg = c.Back },
                Keyword = { fg = c.Blue },
                ["@keyword"] = { fg = c.Blue },
                ["@keyword.function"] = { fg = c.Pink },
                ["@keyword.return"] = { fg = c.Pink },
                ["@constructor"] = { fg = c.Front },
                ["@field"] = { fg = c.BlueGreen },
                ["@variable.member.lua"] = { fg = c.BlueGreen },
                --["@lsp.type.parameter.lua"] = { link = "parameter" },
                ["@lsp.type.property.lua"] = { fg = c.BlueGreen },
                ["@lsp.typemod.type.defaultLibrary.cpp"] = { link = "@type" },
                ["@text.reference.vimdoc"] = { fg = c.Blue },
                Identifier = { fg = c.BlueGreen },
                NvimTreeNormal = { fg = c.Yellow },
                NvimTreeFolderName = { fg = c.LightBlue },
                NvimTreeOpenedFolderName = { link = "NvimTreeFolderName" },
                NvimTreeRootFolder = { fg = nil },
                WinBar = { fg = c.Gray, bg = c.Back },
                WinBarNC = { fg = c.Gray, bg = c.Back },
                DashboardFooter = { fg = c.Blue, bg = c.Back, italic = true },
                WinSeparator = { fg = c.SplitDark },
            },
        })
        vim.cmd([[colorscheme vscode]])
    end,
}
