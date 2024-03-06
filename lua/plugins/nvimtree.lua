return {
    "nvim-tree/nvim-tree.lua",
    enabled = true,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        require("nvim-tree").setup({
            disable_netrw = true,
            sync_root_with_cwd = true,
            view = {
                preserve_window_proportions = true,
            },
            renderer = {
                icons = {
                    git_placement = "after",
                },
            },
        })
    end,
}
