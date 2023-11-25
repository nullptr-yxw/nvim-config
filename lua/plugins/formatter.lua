return {
    'mhartington/formatter.nvim',
    config = function()
        vim.api.nvim_create_autocmd('BufWritePost',{
            pattern = {'*'},
            command = 'FormatWrite',
        })
        require("formatter").setup({
        })
    end,
}
