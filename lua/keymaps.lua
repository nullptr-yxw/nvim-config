local map = require("Utils.functions").map
map({
    t = {
        ["<esc>"] = [[<C-\><C-n>]],
    },
    [{ '', 'l', 't' }] = {
        ["<c-q>"] = [[<cmd>wa<cr><cmd>qa!<cr>]],
        ["<c-s>"] = [[<cmd>w<cr>]],
    },
    [{ 'n', 't' }] = {
        ["<a-m>"] = [[<cmd>ToggleTerm direction=tab<cr>]],
        ["<a-n>"] = [[<cmd>ToggleTerm<cr>]],
        ["<a-b>"] = [[<cmd>NvimTreeToggle<cr>]],
        ["<a-v>"] = [[<c-v>]],
    },
})

--map("<A-n>", "<cmd>ToggleTerm<cr>")
--map("<A-b>", "<cmd>NvimTreeToggle<cr>")
--map("<A-m>", "<cmd>ToggleTerm direction=tab<cr>")
--map('t', '<esc>', [[<C-\><C-n>]])
--map("<C-q>", "<cmd>wa<cr><cmd>qa!<cr>")
--map("<C-s>", "<cmd>w<cr>")
