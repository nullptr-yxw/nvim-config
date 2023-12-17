return {
    'glepnir/dashboard-nvim',
    dependencies = {
        'nvim-telescope/telescope.nvim',
        "nvim-telescope/telescope-file-browser.nvim",
    },
    event = 'VimEnter',
    config = function()
        require('dashboard').setup({
            theme = "doom",
            hide = {
                statusline = true,
            },
            config = {
                -- stylua: ignore
                center = {
                    { action = "Telescope file_browser", desc = " Find projects", icon = " ", key = "f" },
                    { action = "Telescope find_files", desc = " Find file", icon = " ", key = "f" },
                    { action = "Telescope oldfiles", desc = " Recent files", icon = " ", key = "r" },
                    { action = "Telescope live_grep", desc = " Find text", icon = " ", key = "g" },
                    { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " Config", icon = " ", key = "c" },
                    { action = 'lua require("persistence").load()', desc = " Restore Session", icon = " ", key = "s" },
                    { action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
                    { action = "qa", desc = " Quit", icon = " ", key = "q" },
                },
                footer = function()
                    local stats = require("lazy").stats()
                    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                    return { "⚡ Neovim loaded " ..
                    stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
                end,
            },
        })
    end,
}
