local M = {}
M.start_config = function()
    require("telescope").extensions.file_browser.file_browser({
        path = vim.fn.stdpath("config"),
        cwd_to_path = true,
        on_complete = {
            function(picker)
                local finder = picker.finder
                local path = finder.path
                if vim.fn.isdirectory(path) then
                    vim.api.nvim_set_current_dir(path)
                end
            end,
        },
    })
end

return M
