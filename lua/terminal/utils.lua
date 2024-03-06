local default_options = {
    cmd = nil,
    pos = "current window",
    file_type = "Terminal",
    close_on_exit = false,
    before_fn = nil,,
    after_fn = nil,
    wo = {
        number = false,
        relativenumber = false,
    },
    bo = {
        buflisted = true,
        file_type = "Terminal",
    },
}
local terminals = {
    list = {},
}
function terminals:new(opts)
    opts = vim.tbl_deep_extend("force", default_options, opts)
end
