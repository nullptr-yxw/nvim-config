local functions = {}

functions.map = function(m, l, r)
    local opts = { noremap = true, silent = true }
    if r == nil then
        vim.api.nvim_set_keymap('', m, l, opts)
        vim.api.nvim_set_keymap('i', m, l, opts)
        vim.api.nvim_set_keymap('v', m, l, opts)
        vim.api.nvim_set_keymap('t', m, l, opts)
        return
    end
    vim.api.nvim_set_keymap(m, l, r, opts)
end

functions.my_create_autocmds = function(table)
    local group = nil
    for k, v in ipairs(table) do
        if k == "group" then
            group = k
            vim.api.nvim_create_augroup(v)
            break
        end
    end
    for k, v in ipairs(table) do
        if k ~= "group" then
            if not v.group then
                v.group = group
            end
            vim.api.nvim_create_autocmd(k, v)
        end
    end
end

return functions
