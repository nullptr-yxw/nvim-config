local usercmd = vim.api.nvim_create_user_command
local exec2 = vim.api.exec2
local alias = require("utility.functions").cmd_alias
usercmd("Vbh", function(t)
	local str = "vert help " .. t.args .. " | setlocal buflisted"
	vim.api.nvim_exec2(str, {})
end, { nargs = "?" })
usercmd("Config", function()
	require("utility.functions").start_config()
end, { nargs = 0 })