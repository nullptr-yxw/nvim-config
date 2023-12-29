local M = {}
M.logo_align = function(logo, before, after)
    return vim.split(string.rep("\n", before) .. logo .. string.rep("\n", after), "\n")
end
M.get_startuptime = function()
    local stats = require("lazy").stats()
    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
    return "⚡ Neovim loaded "
        .. stats.loaded
        .. "/"
        .. stats.count
        .. " plugins in "
        .. ms
        .. "ms"
end
M.get_header = function(header)
    local lo = require("logo.headers." .. header)
    if lo.type == "girl" then
        return M.logo_align(lo.logo, 1, 1)
    end
end
M.get_poems = function(num)
    return function()
        return { "", require("logo.footers.poems")[num], "", M.get_startuptime() }
    end
end
return M
