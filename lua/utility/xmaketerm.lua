local terminal = require("toggleterm.terminal").Terminal
local map = require("utility.functions").map
local run = "xmake build && xmake run ; ~/pause"
Xmakerunfloat = terminal:new({
    cmd = run,
})
map("<F5>", "<cmd>lua Xmakerunfloat:toggle()<cr>")
Xmakerunright = terminal:new({
    cmd = run,
    close_on_exit = false,
    direction = "vertical",
})
Xmakerunbelow = terminal:new({
    cmd = run,
    close_on_exit = false,
    direction = "horizontal"
})
Xmakewatch = terminal:new({
    cmd = [[xmake build -w && xmake run; xmake watch -- (clear; xmake build && xmake run)]],
    close_on_exit = false,
})
map("<F6>", "<cmd>lua Xmakewatch:toggle()<cr>")
