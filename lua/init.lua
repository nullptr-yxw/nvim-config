require("options").init()
require("keymaps")
require("autocmd")
require("usercmd")
if vim.g.neovide then
	require("neovide").init()
end
require("lazynvim").init()
if vim.fn.has("linux") then
    vim.api.nvim_set_current_dir("~")
end
