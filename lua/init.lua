require("options").init()
require("keymaps")
require("autocmd")
require("usercmd")
if vim.g.neovide then
	require("neovide").init()
end
require("lazynvim").init()