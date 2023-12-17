return {
  'stevearc/aerial.nvim',
  config = function()
    require("aerial").setup({
      layout = {
        min_width = 25,
        max_width = 25,
      },
      filter_kind = false,
    })
  end,
  -- Optional dependencies
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons"
  },
}
