return {
    "petertriho/nvim-scrollbar",
    dependencies = "kevinhwang91/nvim-hlslens",
    config = function()
        require("scrollbar").setup({
            handle = {
                text = " ",
                blend = 0, -- Integer between 0 and 100. 0 for fully opaque and 100 to full transparent. Defaults to 30.
                highlight = "LineNr",
            },
            handlers = {
                cursor = false,
            },
        })
        require("scrollbar.handlers.search").setup()
    end,
}
