local M = {}

M.fts = {
    make = {
        opt_local = {
            expandtab = false,
            number = false,
        },
    },
}

M.init = function()
    vim.api.nvim_create_augroup("custom filetype", { clear = false })
    for filetype, settings in pairs(M.fts) do
        vim.api.nvim_create_autocmd("Filetype", {
            pattern = filetype,
            group = "custom filetype",
            callback = function()
                for i, j in pairs(settings) do
                    for m, n in pairs(j) do
                        vim[i][m] = n
                    end
                end
            end,
        })
    end
end

return M
