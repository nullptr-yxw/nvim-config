return {
    autocmd_config = {
        auto_save = true,
    },
    vim_config = {
        opt = {
            modelines = -1,         --禁用模式行
            number = true,          --显示数字
            numberwidth = 4,
            relativenumber = false, --不显示相对行号
            smartindent = true,     --智能缩进
            autoindent = true,      --智能对齐
            smarttab = true,        --智能tab
            tabstop = 4,            --tab缩进4
            shiftwidth = 4,         --自动缩进4
            expandtab = true,       --用space
            termguicolors = true,
            backup = false,
            swapfile = false,
            clipboard = "unnamedplus", -- allows neovim to access the system clipboard
            autoread = true,
            wrap = false,
            mouse = "a",
            guicursor = "a:ver25",
            wildmenu = true,
            signcolumn = "yes:1",
            pumheight = 15,
            pumwidth = 30,
            cmdheight = 0,
        },
        g = {
            clipboard = (function()
                if (vim.fn.has("wsl") == 1) then
                    return {
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
            end)(),
        },
    },
}
