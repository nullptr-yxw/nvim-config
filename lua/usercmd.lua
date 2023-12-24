local usercmd = vim.api.nvim_create_user_command

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
	require("utility.functions").start_config()
end, { nargs = 0 })
