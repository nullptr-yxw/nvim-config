return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("telescope").setup {
            defaults = {
--                initial_mode = "normal",
            },
            extensions = {
                file_browser = {
                    auto_depth = true,
                    hide_parent_dir = true,
                },
            },
        }
        require("telescope").load_extension("file_browser")
    end,
}
