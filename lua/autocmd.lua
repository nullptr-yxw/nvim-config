local load_autocmds = require("utility.functions").load_autocmds
local opt = vim.opt
local lopt = vim.opt_local
load_autocmds("native term", {
    TermOpen = {
        pattern = { "*" },
        callback = function()
            lopt.number = false
            lopt.relativenumber = false
            vim.cmd("normal i")
        end,
    },
})
