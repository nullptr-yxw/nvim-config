local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = require('options').vim_config
for k, v in pairs(opts) do
  for m, n in pairs(v) do
    vim[k][m] = n
  end
end

require('keymaps')
require('autocmd')

require("lazy").setup({
  spec = { import = "plugins" },
  ui = {
    border = "rounded"
  },
})
