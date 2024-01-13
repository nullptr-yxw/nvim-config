return {
    "nvimdev/lspsaga.nvim",
    config = function()
        require("lspsaga").setup({
            outline = {
                win_width = 15,
                detail = false,
                layout = 'float',
            }
        })
    end,
}
