local opt = vim.opt
opt.modelines = -1         --禁用模式行
opt.number = true          --显示数字
opt.numberwidth = 4
opt.relativenumber = false --不显示相对行号
opt.smartindent = true     --智能缩进
opt.autoindent = true      --智能对齐
opt.smarttab = true        --智能tab
opt.tabstop = 4            --tab缩进4
opt.shiftwidth = 4         --自动缩进4
opt.expandtab = true       --用space
opt.termguicolors = true
opt.backup = false
opt.swapfile = false
opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard

-- Set wsl-clipboard for vim clipboard if running WSL
-- Check if the current linux kernal is microsoft WSL version
local function is_wsl()
    local version_file = io.open("/proc/version", "rb")
    if version_file ~= nil and string.find(version_file:read("*a"), "microsoft") then
        version_file:close()
        return true
    end
    return false
end

-- If current linux is under WSL then use wclip.exe
-- More info: https://github.com/memoryInject/wsl-clipboard
if is_wsl() then
    vim.g.clipboard = {
        name = "wsl-clipboard",
        copy = {
            ["+"] = "clip.exe",
            ["*"] = "clip.exe"
        },
        paste = {
            ["+"] = "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))",
            ["*"] = "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))"
        },
        cache_enabled = true
    }
end
opt.autoread = true
opt.wrap = false
opt.mouse = "a"
opt.guicursor = "a:ver25"
vim.go.guicursor = "a:ver25"
opt.wildmenu = true
opt.signcolumn = "yes:1"
