return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    enabled = true,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        require("nvim-tree").setup({
            disable_netrw = true,
            
        })
    end,
}
