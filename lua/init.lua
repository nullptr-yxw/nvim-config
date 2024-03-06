require("options").init()
require("keymaps").init()
require("autocmd")
require("usercmd")
require("filetype").init()
if vim.g.neovide then
    require("neovide").init()
end
require("lazynvim").init()
if vim.fn.has("linux") then
    vim.api.nvim_set_current_dir("~")
end
