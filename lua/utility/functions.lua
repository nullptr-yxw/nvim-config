local M = {}

M.map = function(m, l, r)
    local opts = { noremap = true, silent = true }
    if r == nil then
        vim.keymap.set({ 'n', 'v', 'o', 'l', 't' }, m, l, opts)
        return
    end
    vim.keymap.set(m, l, r, opts)
end

M.load_autocmds = function(group, autocmds)
    vim.api.nvim_create_augroup(group, { clear = false })
    for event, autocmd in pairs(autocmds) do
        autocmd.group = group
        vim.api.nvim_create_autocmd(event, autocmd)
    end
end

return M
