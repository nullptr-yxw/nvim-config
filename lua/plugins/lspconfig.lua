return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    enabled = true,
    dependencies = {
        {
            "folke/neoconf.nvim", cmd = "Neoconf", config = true,
        },
        {
            "folke/neodev.nvim", opts = {},
        },
        "neovim/nvim-lspconfig",
    },
    opts = {
        -- add any global capabilities here
        capabilities = {},
        -- Automatically format on save
        autoformat = true,
        -- Enable this to show formatters used in a notification
        -- Useful for debugging formatter issues
        format_notify = false,
        -- options for vim.lsp.buf.format
        -- `bufnr` and `filter` is handled by the LazyVim formatter,
        -- but can be also overridden when specified
        format = {
            formatting_options = nil,
            timeout_ms = nil,
        },
    }, --todo
    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "bashls",
                "clangd",
                "jdtls",
                "hls",
                "cmake",
                "pyright",
                "spectral",
            },
        })

        local lspconfig = require('lspconfig')

        require("mason-lspconfig").setup_handlers({
            function(server_name)
                require("lspconfig")[server_name].setup {}
            end,
            -- Next, you can provide targeted overrides for specific servers.
            ["lua_ls"] = function()
                lspconfig.lua_ls.setup {
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { "vim" }
                            }
                        }
                    }
                }
            end,
            ["clangd"] = function()
                lspconfig.clangd.setup {
                    cmd = {
                        "clangd",
                        "--header-insertion=never",
                        "--query-driver=clang++",
                        "--all-scopes-completion",
                        "--completion-style=detailed",
                        --"--fallback-style=file:~/.clangd/.clang-format",
                    }
                }
            end
        })
        vim.diagnostic.config({
            underline = false,
            update_in_insert = false,
            virtual_text = {
                spacing = 4,
                source = "if_many",
                prefix = "●",
            },
            severity_sort = true,
            signs = false,
        })
    end,
}
