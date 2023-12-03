return {
    'akinsho/toggleterm.nvim',
    enabled = true,
    config = function()
        local terminal = require("toggleterm.terminal").Terminal
        local map = require("utility.functions").map
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
        Xmakewatch = terminal:new({
            cmd =
            [[clear && xmake build -w && xmake run ; xmake watch -q -c "sh -c 'clear && xmake build -w && xmake run'"]],
            close_on_exit = true,
        })
        map("<F6>", "<cmd>lua Xmakewatch:toggle()<cr>")
    end,
}
