return {
    "akinsho/toggleterm.nvim",
    enabled = true,
    config = function()
        local terminal = require("toggleterm.terminal").Terminal
        local map = require("Utils.functions").map
        require("toggleterm").setup({
            shade_terminals = false,
            persist_size = false,
            winbar = {
                enabled = false,
            },
            start_in_insert = true,
            size = function(term)
                if term.direction == "horizontal" then
                    return 10
                elseif term.direction == "vertical" then
                    return vim.fn.winwidth(0)
                end
            end,
        })
        local xmakewatch = function(cmd)
            return [[clear && ]]
                .. cmd
                .. [[; xmake watch -q -c "sh -c 'clear && ]]
                .. cmd
                .. [['"]]
        end
        Xmakerun = terminal:new({
            cmd = [[xmake build -w && xmake run]],
            close_on_exit = false,
        })
        Xmakewatchrun = terminal:new({
            cmd = xmakewatch("xmake build -w && xmake run"),
            close_on_exit = true,
        })
        Xmakewatchasm = terminal:new({
            cmd = xmakewatch("xmake build -w && objdump -d "),
        })
        map({
            [{ "n", "t" }] = {
                ["<F6>"] = [[<cmd>lua Xmakewatchrun:toggle()<cr>]],
                ["<F5>"] = [[<cmd>lua Xmakerun:toggle()<cr>]],
            },
        })
    end,
}
