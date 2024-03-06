return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "bashls",
                --"clangd",
                "jdtls",
                "jsonls",
                "hls",
                "cmake",
                "pyright",
                "spectral",
            },
        })

        local lspconfig = require("lspconfig")

        require("mason-lspconfig").setup_handlers({
            function(server_name)
                require("lspconfig")[server_name].setup({})
            end,
            ["lua_ls"] = function()
                lspconfig.lua_ls.setup({
                    settings = {
                        Lua = {
                            workspace = {
                                library = vim.api.nvim_get_runtime_file('', true),
                            },
                            --diagnostics = {
                            --    globals = { "vim" },
                            --},
                        },
                    },
                })
            end,
            ["clangd"] = function()
                lspconfig.clangd.setup({
                    cmd = {
                        "/bin/clangd",
                        "--header-insertion=never",
                        "--query-driver=clang++",
                        "--all-scopes-completion",
                        "--completion-style=detailed",
                        "--enable-config",
                    },
                })
            end,
        })
        vim.diagnostic.config({
            -- underline = vim.g.neovide and true or false,
            underline = true,
            update_in_insert = false,
            virtual_text = false,
            signs = false,
        })
        --vim.lsp.inlay_hint.enable(0, true)
        local signs = {
            Error = "●",
            Warn = "●",
            Info = "●",
            Hint = "●",
        }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
        end
    end,
}
