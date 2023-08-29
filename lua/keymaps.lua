local opts = { noremap = true, silent = true }
local function map(m, l, r)
    if r == nil then
        map("", m, l)
        map("i", m, l)
        map("v", m, l)
        map("t", m, l)
        return
    end
    vim.api.nvim_set_keymap(m, l, r, opts)
end
map("<A-n>", "<Cmd>ToggleTerm<CR>")
map("<A-b>", "<Cmd>NvimTreeToggle<CR>")
map("<A-m>", "<Cmd>ToggleTerm direction=tab<cr>")
map('t', '<esc>', [[<C-\><C-n>]])
map("<C-q>", "<esc><Cmd>q<CR>")

return map
