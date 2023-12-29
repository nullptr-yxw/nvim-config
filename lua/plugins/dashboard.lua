return {
    "glepnir/dashboard-nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
    },
    event = "VimEnter",
    config = function()
        local dashboard = require("dashboard")
        require("dashboard").setup({
            theme = "doom",
            hide = {
                statusline = true,
            },
            config = {
                header = require("logo").get_header("girl_1"),
                -- stylua: ignore
                center = {
                    { action = "Telescope file_browser", desc = " Find files", icon = " ", key = "f" },
                    { action = "Telescope oldfiles", desc = " Recent files", icon = " ", key = "r" },
                    { action = "Config", desc = " Config", icon = " ", key = "c" },
                    { action = 'lua require("persistence").load()', desc = " Restore Session", icon = " ", key = "s" },
                    { action = "ToggleTerm direction=tab", desc = " Terminal", icon = " ", key = "t" },
                    { action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
                    { action = "qa", desc = " Quit", icon = " ", key = "q" },
                },
                footer = require("logo").get_poems(1),
            },
        })
    end,
}
