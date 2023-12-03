local map = require("utility.functions").map
map("<A-n>", "<cmd>ToggleTerm<cr>")
map("<A-b>", "<cmd>NvimTreeToggle<cr>")
map("<A-m>", "<cmd>ToggleTerm direction=tab<cr>")
map('t', '<esc>', [[<C-\><C-n>]])
map("<C-q>", "<cmd>wa<cr><cmd>qa!<cr>")
map("<C-s>", "<cmd>w<cr>")
