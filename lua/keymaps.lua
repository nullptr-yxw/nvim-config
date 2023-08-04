local opts = { noremap = true, silent = true }
local function map(m, l, r)
    if r == nil then
        map("", m, l)
        map("t", m, l)
        return
    end
    vim.api.nvim_set_keymap(m, l, r, opts)
end
map("", "<M-b>", "<Cmd>ToggleTerm<CR>")
map("", "<M-n>", "<Cmd>NvimTreeToggle<CR>")
map('t', '<esc>', [[<C-\><C-n>]])
map("<C-q>", "<esc><Cmd>q<CR>")
