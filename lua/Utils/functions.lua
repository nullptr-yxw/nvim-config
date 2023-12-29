local M = {}
local mopt = { silent = true, noremap = true }
M.map = function(maps)
	for mode, bindings in pairs(maps) do
		for lhs, rhs in pairs(bindings) do
			vim.keymap.set(mode, lhs, rhs, mopt)
		end
	end
end

M.load_autocmds = function(group, autocmds)
	vim.api.nvim_create_augroup(group, { clear = false })
	for event, autocmd in pairs(autocmds) do
		autocmd.group = group
		vim.api.nvim_create_autocmd(event, autocmd)
	end
end


M.start_config = function()
	local config_path = vim.fn.stdpath("config")
	require("telescope").extensions.file_browser.file_browser({
		path = config_path,
		cwd_to_path = true,
	})
	vim.api.nvim_set_current_dir(config_path)
end



return M
