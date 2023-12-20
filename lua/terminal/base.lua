local au = require("utility.functions").load_autocmds
local terminal = require("toggleterm.terminal").Terminal
local map = require("utility.functions").map
local M = {}
M.next_id = function()
	local all = M.get_all(true)
	for index, term in pairs(all) do
		if index ~= term.id then
			return index
		end
	end
	return #all + 1
end
M.vsplit_with_rate = function(rate, win)
	win = win or 0
	local size = vim.api.nvim_win_get_width(win) * rate
	au("terminal", {
		WinResized = {
			callback = function() end,
		},
	})
end
return M
