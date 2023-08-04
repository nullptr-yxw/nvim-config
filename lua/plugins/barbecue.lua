local c = require("scheme/colors").get_color()
return {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    lazy = true,
    dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
        theme = {
            dirname = {},
            normal = { fg = c.Yellow },
        },
        exclude_filetypes = { "toggleterm" },
    },
}
