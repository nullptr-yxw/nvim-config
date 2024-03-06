local M = {}
local mopt = { silent = true, noremap = true }
M.map = function(maps)
    for mode, bindings in pairs(maps) do
        for lhs, rhs in pairs(bindings) do
            vim.keymap.set(mode, lhs, rhs, mopt)
        end
    end
end

M.load_autocmds = function(group, autocmds)
    vim.api.nvim_create_augroup(group, { clear = false })
    for event, autocmd in pairs(autocmds) do
        autocmd.group = group
        vim.api.nvim_create_autocmd(event, autocmd)
    end
end
return M
