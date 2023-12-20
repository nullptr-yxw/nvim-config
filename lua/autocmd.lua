local load_autocmds = require("utility.functions").load_autocmds
local opt = vim.opt
local lopt = vim.opt_local
load_autocmds("native term", {
	TermOpen = {
		callback = function(event_TermOpen)
			lopt.number = false
			lopt.relativenumber = false
			vim.api.nvim_create_autocmd("BufEnter", {
				buffer = event_TermOpen.buf,
				callback = function()
					vim.cmd("startinsert")
				end,
			})
		end,
	},
	TermEnter = {
		callback = function() end,
	},
})
