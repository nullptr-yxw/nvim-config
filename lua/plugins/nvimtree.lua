return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    enabled = true,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup()
    end,
}
