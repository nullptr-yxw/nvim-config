local default_opts = {
    cmd = nil,
    window = {
        pos = "current window",
        --options = nil,
        default_options = {
            ["current window"] = nil,
            float = {
                win_style = "big",
            },
            split = {},
            tab = {},
        },
    },
    close_on_exit = false,
    before_fn = nil,
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
function terminals.get_term_window(buf, opts)
    local pos = opts.window.pos
    local win_opts = vim.tbl_deep_extend("force", default_opts.window.default_options[pos], opts)
    local pos_to_window = {
        ["current window"] = 0,
        ["float"] = function()
            vim.api.nvim_open_win()
        end,
    }
    return pos_to_window[pos]
end
function terminals:new(opts)
    opts = vim.tbl_deep_extend("force", default_opts, opts)
    local buf = vim.api.nvim_create_buf(false, true)
    for name, value in pairs(opts.bo) do
        vim.api.nvim_set_option_value(name, value, { buf = buf })
    end
    local window = terminals.get_term_window(buf, opts)
end
