local opts = { noremap = true, silent = true }
local function set(m, l, r)
    vim.api.nvim_set_keymap(m, l, r, opts)
end
local function set_nit(l, r)
    set("n", l, r)
    set("i", l, "<esc>" .. r)
    set("t", l, [[<C-\><C-n>]] .. r)
end

set_nit("<A-b>", ":ToggleTerm<CR>")
set_nit("<A-n>", ":NvimTreeToggle<CR>")
set_nit("<A-m>", ":lua require('nvterm.terminal').toggle 'horizontal'<CR>")
set('t', '<esc>', [[<C-\><C-n>]])
