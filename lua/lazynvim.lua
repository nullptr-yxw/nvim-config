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
            disabled_plugins = {
                "edgy",
                "overseer",
                "rainbow-delimiters",
                "indent-blankline",
                --"noice",
            },
        }
    })
end
return M
