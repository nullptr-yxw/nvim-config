local banned_plugins = {
    "auto-save.nvim",
    "bufdelete.nvim",
    "bufferline.nvim",
    "clangd_extensions.nvim",
    "cmake-tools.nvim",
    "Comment.nvim",
    "dashboard-nvim",
    "edgy.nvim",
    "formatter.nvim",
    "hover.nvim",
    "indent-blankline.nvim",
    "lspsaga.nvim",
    "lualine.nvim",
    "LuaSnip",
    "mason-lspconfig.nvim",
    "mason.nvim",
    "noice.nvim",
    "none-ls.nvim",
    "nvim-autopairs",
    "nvim-colorizer.lua",
    "nvim-cmp",
    "nvim-lspconfig",
    "nvim-navbuddy",
    "nvim-scrollbar",
    "nvim-tree.lua",
    "overseer.nvim",
    "rainbow-delimiters.nvim",
    --"stickybuf.nvim",
    "telescope-file-browser.nvim",
    "telescope.nvim",
    "toggleterm.nvim",
    "Trans.nvim",
    "nvim-treesitter",
    "trouble.nvim",
    "vim-lastplace",
    "vscode.nvim",
    "which-key.nvim",

}

local M = {}
M.init = function()
    local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
    if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable", -- latest stable release
            lazypath,
        })
    end
    vim.opt.rtp:prepend(lazypath)
    require("lazy").setup({
        spec = {
            {
                "abeldekat/lazyflex.nvim",
                enabled = false,
                import = "lazyflex.hook",
                opts = {
                    enable_match = false,
                    kw = banned_plugins,
                },
            },
            { import = "plugins" },
        },
        ui = {
            border = "rounded",
        },
        defaults = {
            lazy = false,
        },
        change_detection = {
            -- automatically check for config file changes and reload the ui
            enabled = false,
            notify = false, -- get a notification when changes are found
        },
    })
end
return M
