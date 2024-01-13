local M = {}
M.start_config = function()
    local config_path = vim.fn.stdpath("config")
    require("telescope").extensions.file_browser.file_browser({
        path = config_path,
        cwd_to_path = true,
    })
    vim.api.nvim_set_current_dir(config_path)
end

return M
