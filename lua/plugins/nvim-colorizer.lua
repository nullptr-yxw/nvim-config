return {
    'norcalli/nvim-colorizer.lua',
    enabled = true,
    config = function()
        require('colorizer').setup({}, { names = false, })
    end,
}
