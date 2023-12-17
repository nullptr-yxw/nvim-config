return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("telescope").setup{
            extensions = {
                file_browser = {
                    depth = 3,
                    auto_depth = false,
                    hide_parent_dir = true,
                },
            },
        }
        require("telescope").load_extension "file_browser"
    end,
}
