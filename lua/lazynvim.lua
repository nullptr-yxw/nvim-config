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
        spec = { import = "plugins" },
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
        performance = {
            rtp = {
                disabled_plugins = {
                    "autosave",
                    "bufdelete",
                    "bufferline",
                    "cmake-tools",
                    "Comment",
                    "dashboard-nvim",
                    "edgy.nvim",
                    "formatter.nvim",
                    "lspsaga.nvim",
                    "lualine.nvim",
                    "LuaSnip",
                    "mason-lspconfig.nvim",
                    "mason.nvim",
                    "noice.nvim",
                    "none-ls.nvim",
                    "nvim-autopairs",
                    "nvim-lspconfig",
                    "nvim-navbuddy",
                    "nvim-scrollbar",
                    "nvimtree.lua",
                    "overseer.nvim",
                    "rainbow-delimiters.nvim",
                    "stickybuf.nvim",
                    "telescope-file-browser.nvim",
                    --"telescope.nvim",
                    "toggleterm.nvim",
                    "nvim-treesitter",
                    "trouble.nvim",
                    "vim-lastplace",
                    "whick-key.nvim",
                },
            },
        }
    })
end
return M
