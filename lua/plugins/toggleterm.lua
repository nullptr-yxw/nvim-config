return {
    'akinsho/toggleterm.nvim',
    config = function()
        local terminal = require("toggleterm.terminal").Terminal
        local map = require("keymaps")
        local function create_rterm(term)
            local dire = term.direction
            local size = term.size
            if (dire == "horizontal" and size < 1) then
                local s = vim.fn.winwidth(0)
                term.size = s * size
                terminal:new(term)
                vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
                    callback = function()
                    end,
                })
            end
        end
        require("toggleterm").setup({
            shade_terminals = false,
            persist_size = false,
            winbar = {
                enabled = false,
            },
            start_in_insert = true,
            direction = "vertical",
            size = function(term)
                if term.direction == "horizontal" then
                    return 20
                elseif term.direction == "vertical" then
                    return vim.fn.winwidth(0)
                end
            end,
        })
        Xmakerun = terminal:new({
            cmd = "xmake build && xmake run ; ~/pause",
            close_on_exit = true,
            direction = "float",
        })
        map("<F5>", "<cmd>lua Xmakerun:toggle()<cr>")
        Xmakewatch = terminal:new({
            cmd = [[xmake build -w && xmake run; xmake watch "clear; xmake build -w && xmake run"]],
            close_on_exit = true,
        })
        map("<F6>", "<cmd>lua Xmakewatch:toggle()<cr>")
    end,
}
