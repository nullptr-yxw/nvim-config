local map = require("utility.functions").map
local M = {
    config = {
        o = {
            guifont = "Consolas Nerd Font Mono:h11",
        },
        g = {
            neovide_padding_top = 13,
            neovide_padding_bottom = 13,
            neovide_padding_right = 13,
            neovide_padding_left = 13,
            neovide_theme = "dark",
            neovide_fullscreen = true,
            neovide_remember_window_size = false,
        }
    },
    mappings = {
        [{ "", "l", "t" }] = {
            ["<F11>"] = function()
                vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen
            end,
            ["<a-cr>"] = function()
                vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen
            end,
        },
    }
}
M.init = function()
    if not vim.g.neovide then return end
    for k, v in pairs(M.config) do
        for m, n in pairs(v) do
            vim[k][m] = n
        end
    end

    map(M.mappings)
end
return M
