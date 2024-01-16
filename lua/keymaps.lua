local map = require("utils.functions").map
local M = {
    mappings = {
        t = {
            ["<esc>"] = [[<C-\><C-n>]],
        },
        [{ "", "l", "t" }] = {
            ["<c-q>"] = [[<cmd>wa<cr><cmd>qa!<cr>]],
            ["<c-s>"] = [[<cmd>w<cr>]],
        },
        [{ "n", "t" }] = {
            ["<a-m>"] = [[<cmd>ToggleTerm direction=tab<cr>]],
            ["<a-n>"] = [[<cmd>ToggleTerm<cr>]],
            ["<a-b>"] = [[<cmd>NvimTreeToggle<cr>]],
            ["<a-v>"] = [[<c-v>]],
        },
    },
}

M.init = function()
    map(M.mappings)
end

return M
