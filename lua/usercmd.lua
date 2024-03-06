local usercmd = vim.api.nvim_create_user_command

local M = {}
M.cmds = {
    Vbh = {
        function(t)
            local str = "vert help " .. t.args .. " | setlocal buflisted"
            vim.api.nvim_exec2(str, {})
        end,
        { nargs = "?" },
    },
    Th = {
        function(t)
            local str = "vert help " .. t.args .. " | setlocal buflisted"
            vim.api.nvim_exec2(str, {})
        end,
        { nargs = "?" },
    },
    Vh = {
        function(t)
            local str = "tab help " .. t.args
            vim.api.nvim_exec2(str, {})
        end, { nargs = "?"},
    },
    Config = {
        function(t)
            require("utils.apis").start_config()
        end, { nargs = 0 },
    },
}

usercmd("Vbh", function(t)
    local str = "vert help " .. t.args .. " | setlocal buflisted"
    vim.api.nvim_exec2(str, {})
end, { nargs = "?" })

usercmd("Th", function(t)
    local str = "tab help " .. t.args
    vim.api.nvim_exec2(str, {})
end, { nargs = "?" })

usercmd("Vh", function(t)
    local str = "vert help " .. t.args
    vim.api.nvim_exec2(str, {})
end, { nargs = "?" })

usercmd("Config", function()
    require("utils.apis").start_config()
end, { nargs = 0 })
